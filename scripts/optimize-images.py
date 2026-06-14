#!/usr/bin/env python3
"""Optimisation ponctuelle des images de la vitrine ATECH GROUPE.

Convertit en WebP + redimensionne (sans agrandir) les images surdimensionnées
par rapport à leur rendu réel sur index.html. Les originaux sont conservés.

Usage : python scripts/optimize-images.py
"""
import os
from PIL import Image

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

# (source, destination, largeur max px, qualité)
JOBS = [
    ("ecommerce.JPG",        "ecommerce.webp",       1160, 80),
    ("hero.jpg",             "hero.webp",            1040, 82),
    ("dev saas.jpg",         "dev-saas.webp",        1160, 80),
    ("logo-christ-roi.jpg",  "logo-christ-roi.webp",  160, 85),
]


def human(n):
    for unit in ("o", "Ko", "Mo"):
        if n < 1024:
            return f"{n:.0f} {unit}"
        n /= 1024
    return f"{n:.1f} Go"


def run():
    for src, dst, max_w, q in JOBS:
        src_path = os.path.join(ROOT, src)
        dst_path = os.path.join(ROOT, dst)
        if not os.path.exists(src_path):
            print(f"[SKIP] introuvable : {src}")
            continue

        before = os.path.getsize(src_path)
        with Image.open(src_path) as im:
            im = im.convert("RGB")
            w, h = im.size
            if w > max_w:
                im = im.resize((max_w, round(h * max_w / w)), Image.LANCZOS)
            im.save(dst_path, "WEBP", quality=q, method=6)

        after = os.path.getsize(dst_path)
        gain = 100 * (1 - after / before)
        print(f"[OK]  {src:22s} {human(before):>8s} -> {dst:22s} {human(after):>8s}  (-{gain:.0f}%)")


if __name__ == "__main__":
    run()
