#!/usr/bin/env python3
"""Génération des visuels de la vitrine via le modèle « nano banana »
(gemini-2.5-flash-image), API REST directe (urllib, stdlib only).

Direction artistique commune : sombre bleu métallique premium.
Sorties PNG dans ./nanobanana-output/ (converties ensuite en WebP).

Usage : python scripts/gen_images_nano.py [nom1 nom2 ...]   # sous-ensemble optionnel
"""
import os, json, base64, urllib.request, urllib.error, sys, time

API_KEY = os.environ.get("GEMINI_API_KEY")
MODEL = "gemini-2.5-flash-image"
URL = f"https://generativelanguage.googleapis.com/v1beta/models/{MODEL}:generateContent?key={API_KEY}"
OUT = os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), "nanobanana-output")

STYLE = ("Dark midnight navy background, metallic steel-blue and chrome accents, "
         "cinematic volumetric lighting, photorealistic, premium high-end, subtle reflections, "
         "editorial tech aesthetic, ultra detailed, no text, no watermark, no logo.")

JOBS = {
 "hero": ("9:16", "Premium abstract technology hero scene: floating translucent holographic UI "
          "dashboards and glowing code panels in metallic steel-blue, sleek modern developer "
          "workstation in a dark studio, deep depth of field, chrome reflections, vertical portrait composition."),
 "dev-saas": ("16:9", "Software development scene: glowing lines of code on dark monitors, abstract "
          "data flows and SaaS dashboard holograms in metallic blue, premium dark studio, wide composition."),
 "ecommerce": ("16:9", "Luxury product photography of premium computer hardware: sleek laptops, GPU and "
          "components, peripherals arranged on a dark reflective surface, steel-blue rim lighting, wide composition."),
 "dakar": ("16:9", "Cinematic Dakar Senegal cityscape at blue hour, the African Renaissance Monument "
          "silhouette, modern skyline, atmospheric haze, metallic blue color grade, ultra wide panoramic."),
 "proj-sadg": ("3:4", "Industrial gas and energy distribution facility at night, pipelines and storage "
          "tanks with glowing control dashboards, metallic blue tone, tall vertical composition."),
 "proj-medicos": ("4:3", "Secure medical data platform concept: abstract shielded health interface, "
          "heartbeat line and encrypted nodes, dark UI with blue glow."),
 "proj-swaa": ("4:3", "Dignified diverse African community, hopeful NGO mood, soft silhouettes and "
          "connection, dark blue cinematic editorial tone."),
 "proj-christroi": ("4:3", "Modern education concept: open books merging with digital learning interfaces, "
          "a contemporary school ambiance, dark blue premium tone."),
 "proj-rnp": ("4:3", "Abstract network of connected glowing nodes representing a community association "
          "and solidarity, dark background, metallic blue light trails."),
 "og": ("16:9", "Premium brand banner background: abstract brushed-metal blue tech texture, deep navy, "
          "chrome sheen, clean centered negative space, social preview composition."),
}

def generate(name, aspect, prompt):
    body = {
        "contents": [{"parts": [{"text": f"{prompt} {STYLE} Aspect ratio {aspect}."}]}],
        "generationConfig": {"responseModalities": ["IMAGE"], "imageConfig": {"aspectRatio": aspect}},
    }
    req = urllib.request.Request(URL, data=json.dumps(body).encode(),
                                 headers={"Content-Type": "application/json"})
    with urllib.request.urlopen(req, timeout=120) as r:
        data = json.load(r)
    parts = data["candidates"][0]["content"]["parts"]
    for p in parts:
        inline = p.get("inlineData") or p.get("inline_data")
        if inline:
            raw = base64.b64decode(inline["data"])
            path = os.path.join(OUT, f"{name}.png")
            open(path, "wb").write(raw)
            return path, len(raw)
    raise RuntimeError(f"pas d'image dans la réponse: {json.dumps(data)[:300]}")

def main():
    if not API_KEY:
        sys.exit("GEMINI_API_KEY manquante")
    os.makedirs(OUT, exist_ok=True)
    todo = sys.argv[1:] or list(JOBS.keys())
    for name in todo:
        aspect, prompt = JOBS[name]
        for attempt in (1, 2, 3):
            try:
                path, n = generate(name, aspect, prompt)
                print(f"[OK]   {name:16s} {aspect:5s} -> {path}  ({n//1024} Ko)")
                break
            except urllib.error.HTTPError as e:
                msg = e.read().decode()[:400]
                print(f"[HTTP {e.code}] {name} (essai {attempt}): {msg}")
                if e.code in (429, 500, 503) and attempt < 3:
                    time.sleep(8); continue
                break
            except Exception as e:
                print(f"[ERR]  {name} (essai {attempt}): {e}")
                if attempt < 3:
                    time.sleep(5); continue

if __name__ == "__main__":
    main()
