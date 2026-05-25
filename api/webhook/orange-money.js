/**
 * Webhook Orange Money → ATECHSHOP
 *
 * Configurer dans Orange Money Dashboard → Notifications :
 *   URL : https://atechgroupe-vitrine.vercel.app/api/webhook/orange-money
 *   Méthode : POST
 *
 * Variables d'environnement Vercel à définir :
 *   SUPABASE_URL         → https://bwybsfubmrwjyijxsbbk.supabase.co
 *   SUPABASE_SERVICE_KEY → clé service_role
 *   OM_WEBHOOK_TOKEN     → token de validation Orange Money
 */

const { createClient } = require('@supabase/supabase-js');
const crypto = require('crypto');

module.exports = async (req, res) => {
  if (req.method !== 'POST') {
    return res.status(405).json({ error: 'Method not allowed' });
  }

  const supabase = createClient(
    process.env.SUPABASE_URL,
    process.env.SUPABASE_SERVICE_KEY
  );

  // Orange Money envoie les données en JSON ou form-urlencoded selon la version
  const body = req.body;
  console.log('[om-webhook] Payload reçu :', body);

  // Vérification du token de notification (si configuré)
  const omToken = process.env.OM_WEBHOOK_TOKEN;
  const receivedToken = body?.notifToken || req.headers['x-om-token'];
  if (omToken && receivedToken && receivedToken !== omToken) {
    console.error('[om-webhook] Token invalide');
    return res.status(401).json({ error: 'Invalid token' });
  }

  // Orange Money Sénégal : txnStatus=SUCCESS, txnid=xxx, orderId=ATS-XXXXXX
  const txnStatus   = body?.txnStatus || body?.status;
  const orderNumber = body?.orderId   || body?.client_reference || body?.reference;
  const amount      = body?.amount;

  if (!orderNumber) {
    console.error('[om-webhook] orderId manquant');
    return res.status(400).json({ error: 'orderId manquant' });
  }

  // Ne confirmer que les paiements réussis
  if (txnStatus !== 'SUCCESS' && txnStatus !== 'SUCCESSFUL' && txnStatus !== 'success') {
    console.log('[om-webhook] Statut ignoré :', txnStatus);
    return res.status(200).json({ ok: true, ignored: true, status: txnStatus });
  }

  const { data: updated, error } = await supabase
    .from('orders')
    .update({
      status:         'confirmed',
      payment_status: 'paid',
      updated_at:     new Date().toISOString()
    })
    .eq('order_number', orderNumber)
    .select('id, order_number');

  if (error) {
    console.error('[om-webhook] Supabase error :', error.message);
    return res.status(500).json({ error: error.message });
  }

  console.log('[om-webhook] Commande confirmée :', orderNumber, '— montant :', amount, 'XOF');
  return res.status(200).json({ ok: true, order: orderNumber, updated: updated?.length });
};
