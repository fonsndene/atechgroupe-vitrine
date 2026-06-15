#!/usr/bin/env python3
"""Optimisation SEO/perf des images de la vitrine ATECH GROUPE.
- convertit les images locales lourdes en WebP (redimensionnées)
- rapatrie les images Unsplash distantes en WebP local (mêmes visuels, self-hosted)
- génère l'image OG 1200x630
Les originaux sont conservés. Usage : python scripts/optimize-images.py
"""
import os, io, urllib.request
from PIL import Image

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
UA = {"User-Agent": "Mozilla/5.0 (compatible; ATECHimg/1.0)"}

# Images locales -> WebP : (source, dest, largeur max, qualité)
LOCAL = [
    ("hero.jpg",            "hero.webp",            1040, 82),
    ("dev saas.jpg",        "dev-saas.webp",        1160, 80),
    ("ecommerce.JPG",       "ecommerce.webp",       1160, 80),
    ("logo-christ-roi.jpg", "logo-christ-roi.webp",  160, 85),
]

# Images Unsplash -> WebP local : (id unsplash, dest, largeur, qualité)
REMOTE = [
    ("photo-1690323223790-4df744a1a033", "dakar.webp",          1600, 78),
    ("photo-1664396113489-e50bddd4a777", "proj-sadg.webp",       900, 80),
    ("photo-1576091160399-112ba8d25d1d", "proj-medicos.webp",    900, 80),
    ("photo-1530785602389-07594beb8b73", "proj-swaa.webp",       900, 80),
    ("photo-1536337005238-94b997371b40", "proj-christroi.webp",  900, 80),
    ("photo-1509099863731-ef4bff19e808", "proj-rnp.webp",        900, 80),
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

def save_webp(im, dest, q):
    p=os.path.join(ROOT,dest); im.save(p,"WEBP",quality=q,method=6)
    print(f"[OK] {dest:22s} {human(os.path.getsize(p)):>8s}  {im.width}x{im.height}")

def run():
    for src,dst,w,q in LOCAL:
        sp=os.path.join(ROOT,src)
        if not os.path.exists(sp): print(f"[SKIP] {src} introuvable"); continue
        with Image.open(sp) as im: save_webp(resize(im.convert("RGB"),w),dst,q)

    for pid,dst,w,q in REMOTE:
        url=f"https://images.unsplash.com/{pid}?w={w}&q=85&auto=format&fit=crop"
        try:
            req=urllib.request.Request(url,headers=UA)
            raw=urllib.request.urlopen(req,timeout=60).read()
            with Image.open(io.BytesIO(raw)) as im: save_webp(resize(im.convert("RGB"),w),dst,q)
        except Exception as e:
            print(f"[ERR] {dst}: {e}")

    # OG 1200x630 depuis hero.jpg
    hp=os.path.join(ROOT,"hero.jpg")
    if os.path.exists(hp):
        with Image.open(hp) as im:
            im=resize(im.convert("RGB"),1200)
            if im.height>630:
                top=(im.height-630)//2; im=im.crop((0,top,1200,top+630))
            p=os.path.join(ROOT,"og-atech.jpg"); im.save(p,"JPEG",quality=85,optimize=True)
            print(f"[OK] og-atech.jpg          {human(os.path.getsize(p)):>8s}  {im.width}x{im.height}")

if __name__ == "__main__":
    run()
