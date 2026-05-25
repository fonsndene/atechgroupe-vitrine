-- Migration produits ATECHSHOP → Supabase
INSERT INTO public.products (category_id, sku, name, slug, price_fcfa, stock_qty, images, short_description, brand) VALUES
-- Ordinateurs
('9526039a-6970-4df8-86f6-99f9a4d430fe','ASUS-VB15-001','Laptop ASUS VivoBook 15','laptop-asus-vivobook-15',449000,5,'[{"url":"https://images.unsplash.com/photo-1496181133206-80ce9b88a853?w=600&q=80","alt":"Laptop ASUS VivoBook 15","is_primary":true}]','Ordinateur portable polyvalent, ideal pour le bureau et les etudes','ASUS'),
-- Peripheriques
('67ecbb0e-d6fc-48ab-ad26-bdd953c14eb5','LG-27FHD-001','Ecran LG 27 Full HD','ecran-lg-27-full-hd',189000,8,'[{"url":"https://images.unsplash.com/photo-1527443224154-c4a3942d3acf?w=600&q=80","alt":"Ecran LG 27 Full HD","is_primary":true}]','Ecran 27 pouces IPS Full HD, parfait pour le travail et le multimedia','LG'),
('67ecbb0e-d6fc-48ab-ad26-bdd953c14eb5','LOG-MXM3-001','Souris Logitech MX Master 3','souris-logitech-mx-master-3',45000,15,'[{"url":"https://images.unsplash.com/photo-1527864550417-7fd91fc51a46?w=600&q=80","alt":"Souris Logitech MX Master 3","is_primary":true}]','Souris ergonomique sans fil, precision laser, autonomie 70 jours','Logitech'),
-- Reseaux
('3ae948f2-2bd3-43c9-be24-64e7cc41b02a','TPL-AX3K-001','Routeur WiFi 6 TP-Link AX3000','routeur-wifi6-tplink-ax3000',119000,6,'[{"url":"https://images.unsplash.com/photo-1558494949-ef010cbdcc31?w=600&q=80","alt":"Routeur WiFi 6 TP-Link AX3000","is_primary":true}]','WiFi 6 AX3000, couverture 4 pieces, ideal pour la fibre','TP-Link'),
('3ae948f2-2bd3-43c9-be24-64e7cc41b02a','SW8-GIG-001','Switch 8 ports Gigabit','switch-8-ports-gigabit',38000,12,'[{"url":"https://images.unsplash.com/photo-1544197150-b99a580bb7a8?w=600&q=80","alt":"Switch 8 ports Gigabit","is_primary":true}]','Switch non gere 8 ports Gigabit 10/100/1000 Mbps','TP-Link'),
('3ae948f2-2bd3-43c9-be24-64e7cc41b02a','CAB-RJ45-C6','Cable RJ45 Cat6 10m','cable-rj45-cat6-10m',8500,50,'[{"url":"https://images.unsplash.com/photo-1558618666-fcd25c85cd64?w=600&q=80","alt":"Cable RJ45 Cat6","is_primary":true}]','Cable reseau Cat6 blinde, 10 metres, connecteurs RJ45 dores',NULL),
-- Videosurveillance
('74ddda6b-e061-4c4e-9775-91185cd30c2c','HIK-IP4MP-001','Camera IP Hikvision 4MP','camera-ip-hikvision-4mp',79000,9,'[{"url":"https://images.unsplash.com/photo-1585771724684-38269d6639fd?w=600&q=80","alt":"Camera IP Hikvision 4MP","is_primary":true}]','Camera IP exterieure 4MP, vision nocturne 30m, PoE','Hikvision'),
('74ddda6b-e061-4c4e-9775-91185cd30c2c','DAH-NVR4C-001','Kit NVR 4 cameras Dahua','kit-nvr-4-cameras-dahua',285000,3,'[{"url":"https://images.unsplash.com/photo-1593642632559-0c6d3fc62b89?w=600&q=80","alt":"Kit NVR 4 cameras Dahua","is_primary":true}]','Kit videosurveillance complet: NVR + 4 cameras 2MP + cables','Dahua'),
('74ddda6b-e061-4c4e-9775-91185cd30c2c','HDD-SVG-1TO','Disque dur surveillance 1To','disque-dur-surveillance-1to',55000,7,'[{"url":"https://images.unsplash.com/photo-1531492746076-161ca9bcad58?w=600&q=80","alt":"Disque dur surveillance 1To","is_primary":true}]','HDD 1 To special videosurveillance, tourne 24h/24','Seagate'),
-- Consommables
('c09ce9af-8185-4917-bdbc-39bbd38567f0','HP-LJ-LOT2','Cartouche HP LaserJet (lot 2)','cartouche-hp-laserjet-lot2',32000,20,'[{"url":"https://images.unsplash.com/photo-1612198188060-c7c2a3b66eae?w=600&q=80","alt":"Cartouche HP LaserJet","is_primary":true}]','Lot 2 cartouches compatibles HP LaserJet, rendement eleve','HP'),
('c09ce9af-8185-4917-bdbc-39bbd38567f0','BAT-LAP-UNI','Batterie laptop universelle','batterie-laptop-universelle',28000,14,'[{"url":"https://images.unsplash.com/photo-1587145820266-a5951ee6f620?w=600&q=80","alt":"Batterie laptop universelle","is_primary":true}]','Batterie de remplacement universelle pour laptops 15-17 pouces',NULL),
('c09ce9af-8185-4917-bdbc-39bbd38567f0','MPS-PFD-6P','Multiprise parafoudre 6 prises','multiprise-parafoudre-6-prises',18500,25,'[{"url":"https://images.unsplash.com/photo-1509099836639-18ba1795216d?w=600&q=80","alt":"Multiprise parafoudre 6 prises","is_primary":true}]','Multiprise 6 prises avec protection parafoudre et interrupteur',NULL),
-- Multimedia
('08fc455a-4578-48b6-b3f9-1cdced864907','LOG-C920-HD','Webcam Logitech HD 1080p','webcam-logitech-hd-1080p',35000,10,'[{"url":"https://images.unsplash.com/photo-1587825140708-dfaf72ae4b04?w=600&q=80","alt":"Webcam Logitech HD 1080p","is_primary":true}]','Webcam Full HD 1080p, micro integre, compatible Zoom et Teams','Logitech'),
('08fc455a-4578-48b6-b3f9-1cdced864907','JBL-FLP5-BLK','Enceinte Bluetooth JBL Flip 5','enceinte-bluetooth-jbl-flip5',65000,8,'[{"url":"https://images.unsplash.com/photo-1608043152269-423dbba4e7e1?w=600&q=80","alt":"Enceinte Bluetooth JBL Flip 5","is_primary":true}]','Enceinte portable etanche IPX7, 12h autonomie, son puissant','JBL'),
('08fc455a-4578-48b6-b3f9-1cdced864907','SNY-WH1KM4','Casque Sony WH-1000XM4','casque-sony-wh-1000xm4',125000,5,'[{"url":"https://images.unsplash.com/photo-1583394838336-acd977736f90?w=600&q=80","alt":"Casque Sony WH-1000XM4","is_primary":true}]','Casque ANC haut de gamme, 30h autonomie, son exceptionnel','Sony'),
('08fc455a-4578-48b6-b3f9-1cdced864907','SND-USB-64G','Cle USB 3.0 SanDisk 64Go','cle-usb-sandisk-64go',9500,30,'[{"url":"https://images.unsplash.com/photo-1618366712010-f4ae9c647dcb?w=600&q=80","alt":"Cle USB SanDisk 64Go","is_primary":true}]','Cle USB 3.0 ultra-rapide 64 Go, lecture 130 MB/s','SanDisk')
ON CONFLICT (sku) DO NOTHING;

-- RLS: anon peut lire les produits actifs
ALTER TABLE public.products ENABLE ROW LEVEL SECURITY;
CREATE POLICY IF NOT EXISTS "anon_read_active_products" ON public.products
  FOR SELECT TO anon, authenticated
  USING (is_active = true);

-- Admin peut tout faire sur les produits
CREATE POLICY IF NOT EXISTS "admin_all_products" ON public.products
  FOR ALL TO authenticated
  USING ((auth.jwt()->>'email') = 'fonsndiaye@gmail.com')
  WITH CHECK ((auth.jwt()->>'email') = 'fonsndiaye@gmail.com');

SELECT COUNT(*) AS produits_inseres FROM public.products;
