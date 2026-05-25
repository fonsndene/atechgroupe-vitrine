/**
 * Webhook Wave Pay → ATECHSHOP
 *
 * Configurer dans Wave Dashboard → Webhooks :
 *   URL : https://atechgroupe-vitrine.vercel.app/api/webhook/wave
 *   Événements : checkout.session.completed
 *
 * Variables d'environnement Vercel à définir :
 *   SUPABASE_URL         → https://bwybsfubmrwjyijxsbbk.supabase.co
 *   SUPABASE_SERVICE_KEY → clé service_role (Supabase Dashboard → Settings → API)
 *   WAVE_WEBHOOK_SECRET  → secret HMAC affiché dans Wave Dashboard
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

  // Vérification signature HMAC-SHA256
  const secret    = process.env.WAVE_WEBHOOK_SECRET;
  const signature = req.headers['wave-signature'] || req.headers['x-wave-signature'];

  if (secret && signature) {
    const rawBody  = JSON.stringify(req.body);
    const expected = crypto.createHmac('sha256', secret).update(rawBody).digest('hex');
    if (signature !== expected) {
      console.error('[wave-webhook] Signature invalide');
      return res.status(401).json({ error: 'Invalid signature' });
    }
  }

  const { type, data } = req.body;
  console.log('[wave-webhook] Event reçu :', type, data?.client_reference);

  // On ne traite que les paiements complétés
  if (type !== 'checkout.session.completed') {
    return res.status(200).json({ ok: true, ignored: true });
  }

  const orderNumber = data?.client_reference;
  const amount      = data?.amount;

  if (!orderNumber) {
    return res.status(400).json({ error: 'client_reference manquant' });
  }

  // Mise à jour du statut de la commande en base
  const { data: updated, error } = await supabase
    .from('orders')
    .update({
      status:         'confirmed',
      payment_status: 'paid',
      updated_at:     new Date().toISOString()
    })
    .eq('order_number', orderNumber)
    .select('id, order_number, delivery_name, delivery_phone');

  if (error) {
    console.error('[wave-webhook] Supabase error :', error.message);
    return res.status(500).json({ error: error.message });
  }

  console.log('[wave-webhook] Commande confirmée :', orderNumber, '— montant :', amount, 'XOF');
  return res.status(200).json({ ok: true, order: orderNumber, updated: updated?.length });
};
