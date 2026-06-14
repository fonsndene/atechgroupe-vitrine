#!/usr/bin/env python3
"""Traite les visuels nano banana (nanobanana-output/*.png) :
redimensionne + convertit en WebP (et l'OG en JPG 1200x630) vers la racine du projet.
Les PNG sources sont conservés.
"""
import os
from PIL import Image

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
SRC = os.path.join(ROOT, "nanobanana-output")

# (source png, sortie, largeur max, qualité)
WEBP = [
    ("hero.png",          "hero.webp",            960, 82),
    ("dev-saas.png",      "dev-saas.webp",       1160, 80),
    ("ecommerce.png",     "ecommerce.webp",      1160, 80),
    ("dakar.png",         "dakar.webp",          1920, 78),
    ("proj-sadg.png",     "proj-sadg.webp",       860, 80),
    ("proj-medicos.png",  "proj-medicos.webp",    860, 80),
    ("proj-swaa.png",     "proj-swaa.webp",       860, 80),
    ("proj-christroi.png","proj-christroi.webp",  860, 80),
    ("proj-rnp.png",      "proj-rnp.webp",        860, 80),
]

def human(n):
    for u in ("o","Ko","Mo"):
        if n < 1024: return f"{n:.0f} {u}"
        n/=1024
    return f"{n:.1f} Go"

def resize(im, w):
    if im.width > w:
        im = im.resize((w, round(im.height*w/im.width)), Image.LANCZOS)
    return im

def run():
    for src, dst, w, q in WEBP:
        sp = os.path.join(SRC, src); dp = os.path.join(ROOT, dst)
        if not os.path.exists(sp):
            print(f"[SKIP] {src} introuvable"); continue
        with Image.open(sp) as im:
            im = resize(im.convert("RGB"), w)
            im.save(dp, "WEBP", quality=q, method=6)
        print(f"[OK] {dst:22s} {human(os.path.getsize(dp)):>8s}  {im.width}x{im.height}")

    # OG : 1200x630 JPG (crop centré)
    ogs = os.path.join(SRC, "og.png")
    if os.path.exists(ogs):
        with Image.open(ogs) as im:
            im = resize(im.convert("RGB"), 1200)
            target_h = 630
            if im.height > target_h:
                top = (im.height - target_h)//2
                im = im.crop((0, top, 1200, top+target_h))
            dp = os.path.join(ROOT, "og-atech.jpg")
            im.save(dp, "JPEG", quality=85, optimize=True)
        print(f"[OK] og-atech.jpg          {human(os.path.getsize(dp)):>8s}  {im.width}x{im.height}")

if __name__ == "__main__":
    run()
