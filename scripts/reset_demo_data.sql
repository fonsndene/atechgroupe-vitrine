-- =====================================================
-- RESET ATECHSHOP — Supprime toutes les données demo
-- À exécuter dans Supabase > SQL Editor
-- =====================================================

-- 1. Vider les lignes de commandes (contrainte FK sur orders)
DELETE FROM public.order_items;

-- 2. Vider les commandes de test
DELETE FROM public.orders;

-- 3. Supprimer tous les produits demo
DELETE FROM public.products;

-- Vérification : chaque ligne doit afficher 0
SELECT 'products'   AS table_name, COUNT(*) AS lignes FROM public.products
UNION ALL
SELECT 'orders',                   COUNT(*)            FROM public.orders
UNION ALL
SELECT 'order_items',              COUNT(*)            FROM public.order_items;

-- Note : les catégories sont conservées (structure du catalogue)
