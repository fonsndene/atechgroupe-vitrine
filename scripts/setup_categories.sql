-- ============================================================
-- SETUP CATÉGORIES ATECHSHOP
-- À exécuter AVANT seed_products_real.sql
-- Idempotent : ON CONFLICT DO NOTHING (safe à re-exécuter)
-- ============================================================

-- Catégories principales
INSERT INTO public.categories (name, slug, icon, sort_order)
VALUES
  ('Ordinateurs & Laptops', 'ordinateurs',     '💻', 1),
  ('Périphériques',         'peripheriques',   '🖱️', 2),
  ('Réseau & Sécurité',     'reseau-securite', '📡', 3),
  ('Consommables',          'consommables',    '🖨️', 4),
  ('Téléphones & Tablettes','telephones',      '📱', 5),
  ('Accessoires',           'accessoires',     '🔌', 6),
  ('Multimédia',            'multimedia',      '🎧', 7)
ON CONFLICT (slug) DO NOTHING;

-- Sous-catégories
INSERT INTO public.categories (name, slug, parent_id, sort_order)
VALUES
  ('Laptops',   'laptops',    (SELECT id FROM public.categories WHERE slug = 'ordinateurs'),   1),
  ('PC Bureau', 'pc-bureau',  (SELECT id FROM public.categories WHERE slug = 'ordinateurs'),   2),
  ('Souris',    'souris',     (SELECT id FROM public.categories WHERE slug = 'peripheriques'),  1),
  ('Claviers',  'claviers',   (SELECT id FROM public.categories WHERE slug = 'peripheriques'),  2),
  ('Caméras IP','cameras-ip', (SELECT id FROM public.categories WHERE slug = 'reseau-securite'),1),
  ('Cartouches','cartouches', (SELECT id FROM public.categories WHERE slug = 'consommables'),   1)
ON CONFLICT (slug) DO NOTHING;

-- Vérification
SELECT slug, name FROM public.categories ORDER BY sort_order, name;
