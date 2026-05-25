-- ============================================================
-- SEED PRODUITS RÉELS — ATECHSHOP
-- Source: Business_IT_Produits Alphonse2.xlsx
-- Photos: Unsplash CDN | Descriptions: personnalisées FR
-- À exécuter dans Supabase → SQL Editor
-- ============================================================

INSERT INTO public.products
  (category_id, sku, name, slug, price_fcfa, stock_qty, images, short_description, brand)
VALUES

-- ===== ORDINATEURS & LAPTOPS (15 produits) =====
('9526039a-6970-4df8-86f6-99f9a4d430fe','HP-250G8-I5-001',
 'HP 250 G8 Core i5 8Go 512Go SSD','hp-250-g8-core-i5-8go-512go-ssd',370000,50,
 '[{"url":"https://images.unsplash.com/photo-1496181133206-80ce9b88a853?w=600&q=80","alt":"HP 250 G8","is_primary":true}]',
 'Laptop professionnel 15.6" FHD, Intel Core i5 11e gen, 8 Go RAM DDR4, SSD 512 Go – polyvalent pour bureau et etudes.','HP'),

('9526039a-6970-4df8-86f6-99f9a4d430fe','HP-EB840G8-I7-001',
 'HP EliteBook 840 G8 Core i7 16Go 512Go SSD','hp-elitebook-840-g8-i7-16go-512go-ssd',750000,50,
 '[{"url":"https://images.unsplash.com/photo-1496181133206-80ce9b88a853?w=600&q=80","alt":"HP EliteBook 840 G8","is_primary":true}]',
 'Ultrabook 14" HP EliteBook, Core i7 1165G7, 16 Go DDR4, SSD 512 Go – robuste et securise pour les professionnels exigeants.','HP'),

('9526039a-6970-4df8-86f6-99f9a4d430fe','HP-ENVY360-15-I7',
 'HP ENVY x360 15 Core i7 16Go 512Go','hp-envy-x360-15-i7-16go-512go',700000,50,
 '[{"url":"https://images.unsplash.com/photo-1496181133206-80ce9b88a853?w=600&q=80","alt":"HP ENVY x360 15","is_primary":true}]',
 'Convertible tactile 15.6" 2-en-1, Core i7, 16 Go RAM, SSD 512 Go – polyvalent pour creatifs et professionnels mobiles.','HP'),

('9526039a-6970-4df8-86f6-99f9a4d430fe','LNV-TB15G2-I5-001',
 'Lenovo ThinkBook 15 G2 Core i5 8Go 256Go SSD','lenovo-thinkbook-15-g2-core-i5-8go-256go',400000,50,
 '[{"url":"https://images.unsplash.com/photo-1496181133206-80ce9b88a853?w=600&q=80","alt":"Lenovo ThinkBook 15 G2","is_primary":true}]',
 'PC portable 15.6" Lenovo ThinkBook, Core i5 1135G7, 8 Go DDR4, SSD 256 Go – slim et elegant pour les professionnels en deplacement.','Lenovo'),

('9526039a-6970-4df8-86f6-99f9a4d430fe','APL-MBA13-M3-256',
 'Apple MacBook Air 13" M3 256Go','apple-macbook-air-13-m3-256go',600000,50,
 '[{"url":"https://images.unsplash.com/photo-1517336714731-489689fd1ca8?w=600&q=80","alt":"Apple MacBook Air M3","is_primary":true}]',
 'MacBook Air 13" puce Apple M3, CPU 8 coeurs, SSD 256 Go, autonomie toute la journee – le laptop le plus fin et silencieux du marche.','Apple'),

('9526039a-6970-4df8-86f6-99f9a4d430fe','APL-MBA-M1-2020',
 'Apple MacBook Air 2020 M1','apple-macbook-air-2020-m1',650000,50,
 '[{"url":"https://images.unsplash.com/photo-1517336714731-489689fd1ca8?w=600&q=80","alt":"MacBook Air M1 2020","is_primary":true}]',
 'MacBook Air Apple M1, puce 8 coeurs, SSD 256 Go, Retina 13.3" – performance exceptionnelle en silence total, autonomie 18h.','Apple'),

('9526039a-6970-4df8-86f6-99f9a4d430fe','APL-MBP14-M3P-512',
 'MacBook Pro 14" M3 Pro 18Go 512Go','macbook-pro-14-m3-pro-18go-512go',1250000,50,
 '[{"url":"https://images.unsplash.com/photo-1517336714731-489689fd1ca8?w=600&q=80","alt":"MacBook Pro 14 M3 Pro","is_primary":true}]',
 'MacBook Pro 14" puce M3 Pro, 18 Go RAM unifiee, SSD 512 Go, Liquid Retina XDR – puissance professionnelle ultime pour creatifs et developpeurs.','Apple'),

('9526039a-6970-4df8-86f6-99f9a4d430fe','DEL-LAT5420-I7-001',
 'Dell Latitude 5420 Core i7 16Go 512Go SSD','dell-latitude-5420-i7-16go-512go-ssd',700000,50,
 '[{"url":"https://images.unsplash.com/photo-1496181133206-80ce9b88a853?w=600&q=80","alt":"Dell Latitude 5420","is_primary":true}]',
 'Business laptop 14" Dell Latitude, Core i7 1185G7, 16 Go RAM, SSD 512 Go, Wi-Fi 6 – fiabilite et securite pour les entreprises modernes.','Dell'),

('9526039a-6970-4df8-86f6-99f9a4d430fe','HP-290G4-MT-001',
 'HP 290 G4 Microtower Core i5','hp-290-g4-microtower-core-i5',275000,50,
 '[{"url":"https://images.unsplash.com/photo-1593640495253-23196b27a87f?w=600&q=80","alt":"HP 290 G4 Microtower","is_primary":true}]',
 'Unite centrale compacte HP 290 G4, Intel Core i5, 8 Go RAM, HDD 1 To – solution bureautique fiable et economique pour les PME dakaroises.','HP'),

('9526039a-6970-4df8-86f6-99f9a4d430fe','HP-PT400G9-I5-001',
 'HP Pro Tower 400 G9 Core i5-12500','hp-pro-tower-400-g9-core-i5-12500',430000,50,
 '[{"url":"https://images.unsplash.com/photo-1593640495253-23196b27a87f?w=600&q=80","alt":"HP Pro Tower 400 G9","is_primary":true}]',
 'Tour professionnelle HP Pro 400 G9, Core i5 12e generation, DDR5, SSD – performances modernes avec gestion centralisee pour entreprises.','HP'),

('9526039a-6970-4df8-86f6-99f9a4d430fe','HP-AIO24-I5-12G-001',
 'HP All-in-One 24" Core i5 12th 8Go 512Go Tactile','hp-all-in-one-24-core-i5-12th-tactile',730000,50,
 '[{"url":"https://images.unsplash.com/photo-1517694712202-14dd9538aa97?w=600&q=80","alt":"HP All-in-One 24 tactile","is_primary":true}]',
 'Tout-en-un HP 24" FHD tactile, Core i5 12e gen, 8 Go RAM, SSD 512 Go – design epure sans cables, espace de travail moderne et productif.','HP'),

('9526039a-6970-4df8-86f6-99f9a4d430fe','HP-AIO27-I5-13G-001',
 'HP AIO 27" Core i5 13th Gen','hp-aio-27-core-i5-13th-gen',650000,50,
 '[{"url":"https://images.unsplash.com/photo-1517694712202-14dd9538aa97?w=600&q=80","alt":"HP AIO 27 Core i5 13th","is_primary":true}]',
 'All-in-One HP 27" Full HD, Core i5 13e generation – grand ecran panoramique et performances recentes pour bureau et PME.','HP'),

('9526039a-6970-4df8-86f6-99f9a4d430fe','LNV-IC5-I7-12G-001',
 'Lenovo IdeaCentre 5 Tour Core i7 12700','lenovo-ideacentre-5-tour-core-i7-12700',380000,50,
 '[{"url":"https://images.unsplash.com/photo-1593640495253-23196b27a87f?w=600&q=80","alt":"Lenovo IdeaCentre 5 Tour","is_primary":true}]',
 'Tour Lenovo IdeaCentre 5, Core i7 12700, 8 Go DDR4, SSD 512 Go – puissance bureautique pour applications exigeantes et multitache intensif.','Lenovo'),

('9526039a-6970-4df8-86f6-99f9a4d430fe','HP-PAV15-I3-512-001',
 'HP Pavilion 15 Core i3 8Go 512Go SSD','hp-pavilion-15-core-i3-8go-512go-ssd',280000,50,
 '[{"url":"https://images.unsplash.com/photo-1496181133206-80ce9b88a853?w=600&q=80","alt":"HP Pavilion 15","is_primary":true}]',
 'Laptop HP Pavilion 15.6" FHD, Core i3 11e gen, 8 Go RAM, SSD 512 Go – abordable et performant pour etudiants et usage quotidien.','HP'),

('9526039a-6970-4df8-86f6-99f9a4d430fe','MSI-SWRD15-I7-001',
 'MSI Sword 15 Core i7-11800H Gaming 8Go 512Go','msi-sword-15-core-i7-gaming-8go-512go',750000,50,
 '[{"url":"https://images.unsplash.com/photo-1496181133206-80ce9b88a853?w=600&q=80","alt":"MSI Sword 15 Gaming","is_primary":true}]',
 'PC portable gaming MSI Sword 15", Core i7-11800H, GeForce RTX 3050Ti, 8 Go RAM, SSD 512 Go – performances gaming et creatives de haut niveau.','MSI'),

-- ===== PÉRIPHÉRIQUES (12 produits) =====
('67ecbb0e-d6fc-48ab-ad26-bdd953c14eb5','HP-24F-FHD-001',
 'Ecran HP 24f 23.8" Full HD IPS','ecran-hp-24f-23-8-full-hd-ips',145000,50,
 '[{"url":"https://images.unsplash.com/photo-1527443224154-c4a3942d3acf?w=600&q=80","alt":"Ecran HP 24f FHD","is_primary":true}]',
 'Moniteur HP 24f 23.8" FHD IPS, ultra-fin, angles 178 degres, reduction lumiere bleue – confort visuel optimal pour de longues journees de travail.','HP'),

('67ecbb0e-d6fc-48ab-ad26-bdd953c14eb5','HP-M27F-FHD-001',
 'Ecran HP M27f 27" Full HD','ecran-hp-m27f-27-pouces-full-hd',170000,50,
 '[{"url":"https://images.unsplash.com/photo-1527443224154-c4a3942d3acf?w=600&q=80","alt":"Ecran HP M27f 27 pouces","is_primary":true}]',
 'Grand moniteur HP M27f 27" FHD IPS, sans bordure 3 cotes, ultra-fin – vaste espace de travail pour productivite et creativite.','HP'),

('67ecbb0e-d6fc-48ab-ad26-bdd953c14eb5','DEL-SE2422H-001',
 'Dell 24" Moniteur SE2422H','dell-24-moniteur-se2422h',140000,50,
 '[{"url":"https://images.unsplash.com/photo-1527443224154-c4a3942d3acf?w=600&q=80","alt":"Dell SE2422H 24 pouces","is_primary":true}]',
 'Moniteur Dell 24" FHD IPS antireflet, ports HDMI et VGA, montage VESA – qualite d''image professionnelle pour votre bureau.','Dell'),

('67ecbb0e-d6fc-48ab-ad26-bdd953c14eb5','LOG-MXMS3-001',
 'Souris Logitech MX Master 3S','souris-logitech-mx-master-3s',75000,50,
 '[{"url":"https://images.unsplash.com/photo-1527864550417-7fd91fc51a46?w=600&q=80","alt":"Souris Logitech MX Master 3S","is_primary":true}]',
 'Souris Logitech MX Master 3S, capteur 8000 DPI, molette MagSpeed, recharge USB-C, 70 jours d''autonomie – la souris des professionnels performants.','Logitech'),

('67ecbb0e-d6fc-48ab-ad26-bdd953c14eb5','APL-MGCMSE2-001',
 'Souris Apple Magic Mouse v2','souris-apple-magic-mouse-v2',60000,50,
 '[{"url":"https://images.unsplash.com/photo-1527864550417-7fd91fc51a46?w=600&q=80","alt":"Apple Magic Mouse v2","is_primary":true}]',
 'Souris Apple Magic Mouse v2, surface Multi-Touch, recharge Lightning, design ultra-plat – compagnon ideal pour iMac et MacBook.','Apple'),

('67ecbb0e-d6fc-48ab-ad26-bdd953c14eb5','LOG-K270-SF-001',
 'Clavier Sans Fil Logitech K270','clavier-sans-fil-logitech-k270',20000,50,
 '[{"url":"https://images.unsplash.com/photo-1618384887929-16ec33fab9ef?w=600&q=80","alt":"Clavier Logitech K270","is_primary":true}]',
 'Clavier sans fil Logitech K270, recepteur Unifying 2.4GHz, autonomie 2 ans, frappe silencieuse – saisie confortable pour le bureau au quotidien.','Logitech'),

('67ecbb0e-d6fc-48ab-ad26-bdd953c14eb5','LOG-H800-BT-001',
 'Casque Logitech H800 Bluetooth Sans Fil','casque-logitech-h800-bluetooth-sans-fil',75000,50,
 '[{"url":"https://images.unsplash.com/photo-1583394838336-acd977736f90?w=600&q=80","alt":"Casque Logitech H800","is_primary":true}]',
 'Casque Logitech H800 sans fil Bluetooth, micro antibruit pivotant, 6h d''autonomie – ideal pour reunions VoIP et teletravail.','Logitech'),

('67ecbb0e-d6fc-48ab-ad26-bdd953c14eb5','SEG-1TOUCH-4TB-001',
 'Disque Dur Externe Seagate One Touch 4 To','disque-dur-externe-seagate-one-touch-4to',70000,50,
 '[{"url":"https://images.unsplash.com/photo-1531492746076-161ca9bcad58?w=600&q=80","alt":"Seagate One Touch 4TB","is_primary":true}]',
 'Disque dur externe Seagate One Touch 4 To, USB 3.0, compact et portable – sauvegardez toutes vos donnees professionnelles en toute securite.','Seagate'),

('67ecbb0e-d6fc-48ab-ad26-bdd953c14eb5','SND-USB3-128G-001',
 'Cle USB 3.0 SanDisk 128 Go','cle-usb-sandisk-128go-usb3',13000,50,
 '[{"url":"https://images.unsplash.com/photo-1618366712010-f4ae9c647dcb?w=600&q=80","alt":"Cle USB SanDisk 128Go","is_primary":true}]',
 'Cle USB SanDisk 128 Go, USB 3.0, transferts rapides 130 Mo/s, design compact – partagez et transportez vos fichiers facilement.','SanDisk'),

('67ecbb0e-d6fc-48ab-ad26-bdd953c14eb5','LOG-C930E-HD-001',
 'Webcam Logitech HD 1080p C930e','webcam-logitech-hd-1080p-c930e',85000,50,
 '[{"url":"https://images.unsplash.com/photo-1587825140708-dfaf72ae4b04?w=600&q=80","alt":"Webcam Logitech C930e","is_primary":true}]',
 'Webcam Logitech C930e Full HD 1080p, grand angle 90 degres, H.264, mise au point auto – videoconferences professionnelles sur Zoom, Teams et Meet.','Logitech'),

('67ecbb0e-d6fc-48ab-ad26-bdd953c14eb5','LEX-SL200-512G-001',
 'SSD Portable Lexar SL200 512 Go','ssd-portable-lexar-sl200-512go',40000,50,
 '[{"url":"https://images.unsplash.com/photo-1597872200969-2b65d56bd16b?w=600&q=80","alt":"SSD Portable Lexar SL200","is_primary":true}]',
 'SSD portable Lexar SL200 512 Go, USB-C 3.1, jusqu''a 550 Mo/s, ultra-compact – transportez vos donnees rapidement et en toute securite.','Lexar'),

('67ecbb0e-d6fc-48ab-ad26-bdd953c14eb5','DEL-P2715Q-4K-001',
 'Moniteur Dell 27" Ultra HD 4K P2715Q','moniteur-dell-27-ultra-hd-4k-p2715q',170000,50,
 '[{"url":"https://images.unsplash.com/photo-1527443224154-c4a3942d3acf?w=600&q=80","alt":"Dell P2715Q 4K 27 pouces","is_primary":true}]',
 'Moniteur Dell 27" Ultra HD 4K IPS 3840x2160, USB-C, DisplayPort, HDMI – precision et details exceptionnels pour creatifs et professionnels.','Dell'),

-- ===== RÉSEAU & SÉCURITÉ (8 produits) =====
('3ae948f2-2bd3-43c9-be24-64e7cc41b02a','TPL-EAP225-AC-001',
 'Point d''acces TP-Link EAP225 AC1350 Gigabit','tp-link-eap225-ac1350-point-acces-gigabit',60000,50,
 '[{"url":"https://images.unsplash.com/photo-1558494949-ef010cbdcc31?w=600&q=80","alt":"TP-Link EAP225","is_primary":true}]',
 'Point d''acces Wi-Fi TP-Link EAP225, dual-band AC1350, Gigabit, PoE, Omada SDN – couverture Wi-Fi professionnelle pour entreprises et hotels.','TP-Link'),

('3ae948f2-2bd3-43c9-be24-64e7cc41b02a','TPL-SG1024-001',
 'Switch 24 Ports Gigabit TP-Link TL-SG1024','switch-24-ports-gigabit-tp-link-sg1024',65000,50,
 '[{"url":"https://images.unsplash.com/photo-1544197150-b99a580bb7a8?w=600&q=80","alt":"Switch TP-Link 24 ports","is_primary":true}]',
 'Switch Gigabit TP-Link 24 ports 10/100/1000 Mbps, boitier metal rack-mount, plug and play – infrastructure reseau fiable et evolutive pour entreprise.','TP-Link'),

('3ae948f2-2bd3-43c9-be24-64e7cc41b02a','DLK-X6080-AX6-001',
 'Routeur Wi-Fi 6 D-Link AX6000 DIR-X6080Z','routeur-wifi6-dlink-ax6000-dir-x6080z',90000,50,
 '[{"url":"https://images.unsplash.com/photo-1558494949-ef010cbdcc31?w=600&q=80","alt":"D-Link AX6000 Wi-Fi 6","is_primary":true}]',
 'Routeur Wi-Fi 6 D-Link AX6000, 8 antennes, MU-MIMO 4x4, jusqu''a 6 Gbps – reseau domestique et PME ultra-rapide pour toute la maison.','D-Link'),

('3ae948f2-2bd3-43c9-be24-64e7cc41b02a','UBQ-U6PRO-001',
 'Point d''acces Ubiquiti UniFi WiFi 6 Pro U6-Pro','ubiquiti-unifi-wifi6-pro-u6-pro',160000,50,
 '[{"url":"https://images.unsplash.com/photo-1558494949-ef010cbdcc31?w=600&q=80","alt":"Ubiquiti U6-Pro WiFi 6","is_primary":true}]',
 'Point d''acces Ubiquiti UniFi U6 Pro, Wi-Fi 6 4x4 MU-MIMO, 300 clients simultanes, PoE – deploiement Wi-Fi entreprise haute densite.','Ubiquiti'),

('3ae948f2-2bd3-43c9-be24-64e7cc41b02a','TND-AC6-AC1200-001',
 'Routeur Tenda AC6 AC1200 Double Bande','routeur-tenda-ac6-ac1200-double-bande',50000,50,
 '[{"url":"https://images.unsplash.com/photo-1558494949-ef010cbdcc31?w=600&q=80","alt":"Routeur Tenda AC6","is_primary":true}]',
 'Routeur Wi-Fi Tenda AC6, AC1200 double bande 2.4/5GHz, 4 antennes, couverture 100m2 – connexion stable pour maison et petit bureau.','Tenda'),

('3ae948f2-2bd3-43c9-be24-64e7cc41b02a','TPL-SG1016D-001',
 'Switch 16 Ports Gigabit TP-Link TL-SG1016D','switch-16-ports-gigabit-tp-link-sg1016d',50000,50,
 '[{"url":"https://images.unsplash.com/photo-1544197150-b99a580bb7a8?w=600&q=80","alt":"Switch TP-Link 16 ports Gigabit","is_primary":true}]',
 'Switch non-gere TP-Link 16 ports Gigabit, boitier metal, plug and play, consommation verte – reseau entreprise performant et economique.','TP-Link'),

('3ae948f2-2bd3-43c9-be24-64e7cc41b02a','QNP-TS233-001',
 'NAS QNAP TS-233 2 Baies ARM 4 Coeurs','nas-qnap-ts233-2-baies-arm-4-coeurs',180000,50,
 '[{"url":"https://images.unsplash.com/photo-1531492746076-161ca9bcad58?w=600&q=80","alt":"NAS QNAP TS-233","is_primary":true}]',
 'NAS QNAP TS-233 2 baies, ARM Cortex-A55 4 coeurs, 2 Go RAM, sauvegarde automatique – serveur de fichiers et cloud prive pour PME.','QNAP'),

('3ae948f2-2bd3-43c9-be24-64e7cc41b02a','TPL-ER605-VPN-001',
 'Routeur VPN Gigabit TP-Link ER605 V2','routeur-vpn-gigabit-tp-link-er605-v2',50000,50,
 '[{"url":"https://images.unsplash.com/photo-1558618666-fcd25c85cd64?w=600&q=80","alt":"TP-Link ER605 VPN Router","is_primary":true}]',
 'Routeur VPN TP-Link ER605, 5 ports Gigabit, multi-WAN, firewall SPI, Omada SDN – securisez et optimisez les connexions reseau de votre entreprise.','TP-Link'),

-- ===== CAMÉRAS IP (5 produits) =====
('74ddda6b-e061-4c4e-9775-91185cd30c2c','HIK-DVR8CH-5MP-001',
 'Hikvision DVR 8 Canaux ColorVu 5MP','hikvision-dvr-8-canaux-colorvu-5mp',85000,50,
 '[{"url":"https://images.unsplash.com/photo-1585771724684-38269d6639fd?w=600&q=80","alt":"Hikvision DVR 8 canaux 5MP","is_primary":true}]',
 'DVR Hikvision ColorVu 8 canaux 5MP, vision couleur nocturne, H.265+, acces mobile – protegez votre commerce ou residence avec images nettes 24h/24.','Hikvision'),

('74ddda6b-e061-4c4e-9775-91185cd30c2c','TPL-TAPO-1080-001',
 'Camera Securite TP-Link Tapo 1080p WiFi','camera-tp-link-tapo-1080p-wifi',30000,50,
 '[{"url":"https://images.unsplash.com/photo-1585771724684-38269d6639fd?w=600&q=80","alt":"TP-Link Tapo 1080p WiFi","is_primary":true}]',
 'Camera interieure TP-Link Tapo 1080p Full HD, Wi-Fi, vision nocturne 9m, detection mouvement – surveillance simple et abordable pour domicile.','TP-Link'),

('74ddda6b-e061-4c4e-9775-91185cd30c2c','DAH-DVR-4CAM-001',
 'Kit Surveillance Dahua DVR + 4 Cameras','kit-dahua-dvr-4-cameras-surveillance',60000,50,
 '[{"url":"https://images.unsplash.com/photo-1593642632559-0c6d3fc62b89?w=600&q=80","alt":"Kit Dahua DVR 4 cameras","is_primary":true}]',
 'Kit videosurveillance Dahua, DVR 4 canaux + 4 cameras AHD Full HD, cables inclus – solution complete pour securiser boutique, entrepot ou residence.','Dahua'),

('74ddda6b-e061-4c4e-9775-91185cd30c2c','HIK-KIT16CH-001',
 'Kit Hikvision 16 Canaux DVR + 16 Cameras ColorVu','kit-hikvision-16-canaux-dvr-16-cameras-colorvu',190000,50,
 '[{"url":"https://images.unsplash.com/photo-1585771724684-38269d6639fd?w=600&q=80","alt":"Kit Hikvision 16 canaux ColorVu","is_primary":true}]',
 'Kit complet Hikvision 16 canaux Turbo HD + 16 cameras ColorVu HD, vision couleur nocturne, alarme integree – securite totale pour grandes surfaces.','Hikvision'),

('74ddda6b-e061-4c4e-9775-91185cd30c2c','EZV-TY2-1080P-001',
 'Camera EZVIZ TY2 1080P Sans Fil Interieure','camera-ezviz-ty2-1080p-sans-fil',35000,50,
 '[{"url":"https://images.unsplash.com/photo-1585771724684-38269d6639fd?w=600&q=80","alt":"EZVIZ TY2 1080p","is_primary":true}]',
 'Camera IP EZVIZ TY2 1080p, Wi-Fi, panoramique 360 degres, vision nocturne infrarouge, detection IA – surveillez votre domicile en temps reel.','EZVIZ'),

-- ===== CONSOMMABLES (8 produits) =====
('c09ce9af-8185-4917-bdbc-39bbd38567f0','HP-207A-TNRN-001',
 'Cartouche HP LaserJet 207A Toner Noir','cartouche-hp-laserjet-207a-toner-noir',50000,50,
 '[{"url":"https://images.unsplash.com/photo-1612198188060-c7c2a3b66eae?w=600&q=80","alt":"Toner HP 207A Noir","is_primary":true}]',
 'Toner HP 207A noir authentique pour Color LaserJet Pro M255/MFP M282/M283, rendement 1350 pages – qualite d''impression professionnelle garantie.','HP'),

('c09ce9af-8185-4917-bdbc-39bbd38567f0','HP-117A-TNRN-001',
 'Cartouche HP 117A Toner Noir Authentique','cartouche-hp-117a-toner-noir',40000,50,
 '[{"url":"https://images.unsplash.com/photo-1612198188060-c7c2a3b66eae?w=600&q=80","alt":"Toner HP 117A Noir","is_primary":true}]',
 'Toner HP 117A noir original pour HP Color Laser 150a/150nw/MFP 178nw/179fnw – impressions nettes et professionnelles, authentique HP.','HP'),

('c09ce9af-8185-4917-bdbc-39bbd38567f0','MRC-1050VA-001',
 'Onduleur Mercury Maverick 1050 VA','onduleur-mercury-maverick-1050va',35000,50,
 '[{"url":"https://images.unsplash.com/photo-1509099836639-18ba1795216d?w=600&q=80","alt":"Onduleur Mercury Maverick 1050VA","is_primary":true}]',
 'Onduleur Mercury Maverick 1050 VA, 4 prises protegees, autonomie ~15 min – indispensable contre les coupures et surtensions frequentes a Dakar.','Mercury'),

('c09ce9af-8185-4917-bdbc-39bbd38567f0','APC-BV1000-001',
 'Onduleur APC Easy UPS BV 1000 VA','onduleur-apc-easy-ups-bv-1000va',75000,50,
 '[{"url":"https://images.unsplash.com/photo-1509099836639-18ba1795216d?w=600&q=80","alt":"Onduleur APC BV 1000VA","is_primary":true}]',
 'Onduleur APC Easy UPS BV 1000 VA, 6 prises IEC protegees, ecran LED, garantie APC – fiabilite professionnelle pour proteger vos equipements.','APC'),

('c09ce9af-8185-4917-bdbc-39bbd38567f0','HP-DJ2710-MFP-001',
 'HP DeskJet 2710 Imprimante Multifonctions','hp-deskjet-2710-imprimante-multifonctions',50000,50,
 '[{"url":"https://images.unsplash.com/photo-1612815154858-60aa4c59eaa6?w=600&q=80","alt":"HP DeskJet 2710 Multifonctions","is_primary":true}]',
 'Imprimante multifonctions HP DeskJet 2710, impression/copie/scan, Wi-Fi, compatible HP+ – solution tout-en-un abordable pour maison et petite entreprise.','HP'),

('c09ce9af-8185-4917-bdbc-39bbd38567f0','EPS-L3250-ETK-001',
 'Epson EcoTank L3250 Tout-en-Un Wi-Fi A4','epson-ecotank-l3250-tout-en-un-wifi',145000,50,
 '[{"url":"https://images.unsplash.com/photo-1612815154858-60aa4c59eaa6?w=600&q=80","alt":"Epson EcoTank L3250","is_primary":true}]',
 'Imprimante tout-en-un Epson EcoTank L3250, reservoirs rechargeables, Wi-Fi – economisez jusqu''a 90% sur l''encre avec les bouteilles EcoTank.','Epson'),

('c09ce9af-8185-4917-bdbc-39bbd38567f0','CAN-TS3640-001',
 'Canon PIXMA TS3640 Imprimante Multifonction Couleur','canon-pixma-ts3640-multifonction-couleur',60000,50,
 '[{"url":"https://images.unsplash.com/photo-1612815154858-60aa4c59eaa6?w=600&q=80","alt":"Canon PIXMA TS3640","is_primary":true}]',
 'Imprimante Canon PIXMA TS3640, impression/copie/scan, Wi-Fi, Bluetooth, AirPrint – qualite photo et document pour la famille et le petit bureau.','Canon'),

('c09ce9af-8185-4917-bdbc-39bbd38567f0','KNG-8G-DDR5-001',
 'Barrette RAM Kingston SO-DIMM 8 Go DDR5','barrette-ram-kingston-sodimm-8go-ddr5',40000,50,
 '[{"url":"https://images.unsplash.com/photo-1597872200969-2b65d56bd16b?w=600&q=80","alt":"RAM Kingston DDR5 8Go","is_primary":true}]',
 'Barrette memoire Kingston 8 Go DDR5 SO-DIMM 4800MHz, compatibilite universelle laptops recents – boostez les performances de votre ordinateur portable.','Kingston'),

-- ===== MULTIMÉDIA (5 produits) =====
('08fc455a-4578-48b6-b3f9-1cdced864907','LOG-ZV100-001',
 'Casque Sans Fil Logitech Zone Vibe 100','casque-logitech-zone-vibe-100-sans-fil',80000,50,
 '[{"url":"https://images.unsplash.com/photo-1583394838336-acd977736f90?w=600&q=80","alt":"Casque Logitech Zone Vibe 100","is_primary":true}]',
 'Casque sans fil Logitech Zone Vibe 100, micro antibruit certifie, Bluetooth multi-device, 20h d''autonomie – qualite audio professionnelle pour le teletravail.','Logitech'),

('08fc455a-4578-48b6-b3f9-1cdced864907','JBL-FLIP5-BT-001',
 'Enceinte Bluetooth JBL Flip 5','enceinte-bluetooth-jbl-flip5',70000,50,
 '[{"url":"https://images.unsplash.com/photo-1608043152269-423dbba4e7e1?w=600&q=80","alt":"Enceinte JBL Flip 5","is_primary":true}]',
 'Enceinte portable JBL Flip 5, Bluetooth, impermeable IPX7, 12h d''autonomie, bass 20W – musique puissante en interieur ou exterieur.','JBL'),

('08fc455a-4578-48b6-b3f9-1cdced864907','EPS-EBX49-001',
 'Videoprojecteur Epson EB-X49','videoprojecteur-epson-eb-x49',450000,50,
 '[{"url":"https://images.unsplash.com/photo-1527443224154-c4a3942d3acf?w=600&q=80","alt":"Videoprojecteur Epson EB-X49","is_primary":true}]',
 'Videoprojecteur Epson EB-X49, 3600 lumens, XGA, HDMI, USB, haut-parleur integre – ideal pour salles de conference, ecoles et presentations.','Epson'),

('08fc455a-4578-48b6-b3f9-1cdced864907','LOG-C270-HD-001',
 'Webcam Logitech C270 HD 720p','webcam-logitech-c270-hd-720p',30000,50,
 '[{"url":"https://images.unsplash.com/photo-1587825140708-dfaf72ae4b04?w=600&q=80","alt":"Webcam Logitech C270","is_primary":true}]',
 'Webcam Logitech C270 HD 720p, micro integre antibruit, USB plug and play, compatible Zoom et Teams – solution abordable pour visioconferences.','Logitech'),

('08fc455a-4578-48b6-b3f9-1cdced864907','LOG-H600-SF-001',
 'Casque Sans Fil Logitech H600','casque-logitech-h600-sans-fil',40000,50,
 '[{"url":"https://images.unsplash.com/photo-1583394838336-acd977736f90?w=600&q=80","alt":"Casque Logitech H600","is_primary":true}]',
 'Casque sans fil Logitech H600, recepteur nano USB, micro antibruit rotatif, 6h d''autonomie – liberte de mouvement pour appels et conferences en ligne.','Logitech')

ON CONFLICT (sku) DO NOTHING;

-- ============================================================
-- Vérification : nombre de produits insérés par catégorie
-- ============================================================
SELECT c.name AS categorie, COUNT(p.id) AS nb_produits
FROM public.products p
JOIN public.categories c ON p.category_id = c.id
GROUP BY c.name
ORDER BY c.name;
