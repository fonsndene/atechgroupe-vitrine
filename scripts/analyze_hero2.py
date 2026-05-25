from playwright.sync_api import sync_playwright
import json

def capture_and_analyze(url, output_path, viewport_width, viewport_height):
    with sync_playwright() as p:
        browser = p.chromium.launch()
        page = browser.new_page(viewport={'width': viewport_width, 'height': viewport_height})
        page.goto(url, wait_until='networkidle', timeout=60000)
        page.wait_for_timeout(3000)

        # Take screenshot
        page.screenshot(path=output_path, full_page=False)

        # Deep DOM scan: find the tallest/widest element near the top
        result = page.evaluate("""
        () => {
            const vw = window.innerWidth;
            const vh = window.innerHeight;

            // Get ALL elements and find large ones near the top
            const allEls = document.querySelectorAll('*');
            let topLargeElements = [];

            for (const el of allEls) {
                const rect = el.getBoundingClientRect();
                if (
                    rect.width >= vw * 0.7 &&  // at least 70% viewport width
                    rect.height >= 150 &&        // at least 150px tall
                    rect.top <= 200              // starts within first 200px
                ) {
                    const style = window.getComputedStyle(el);
                    topLargeElements.push({
                        tag: el.tagName,
                        id: el.id,
                        classes: el.className ? el.className.toString().substring(0, 120) : '',
                        rect: {
                            top: Math.round(rect.top),
                            left: Math.round(rect.left),
                            width: Math.round(rect.width),
                            height: Math.round(rect.height),
                            bottom: Math.round(rect.bottom)
                        },
                        cssHeight: style.height,
                        cssMinHeight: style.minHeight,
                        cssMaxHeight: style.maxHeight,
                        overflow: style.overflow,
                        position: style.position,
                        padding: {
                            top: style.paddingTop,
                            right: style.paddingRight,
                            bottom: style.paddingBottom,
                            left: style.paddingLeft
                        },
                        margin: {
                            top: style.marginTop,
                            right: style.marginRight,
                            bottom: style.marginBottom,
                            left: style.marginLeft
                        },
                        backgroundImage: style.backgroundImage !== 'none' ? style.backgroundImage.substring(0, 80) : null
                    });
                }
            }

            // Sort by height desc, then take top 10
            topLargeElements.sort((a, b) => b.rect.height - a.rect.height);

            // Also get the first img or video inside likely hero
            const heroImages = [];
            for (const el of document.querySelectorAll('img, video, canvas, iframe')) {
                const rect = el.getBoundingClientRect();
                if (rect.width >= vw * 0.5 && rect.top <= 500) {
                    heroImages.push({
                        tag: el.tagName,
                        src: el.src ? el.src.substring(0, 80) : null,
                        width: Math.round(rect.width),
                        height: Math.round(rect.height),
                        top: Math.round(rect.top)
                    });
                }
            }

            return {
                viewport: { width: vw, height: vh },
                topLargeElements: topLargeElements.slice(0, 10),
                heroImages: heroImages.slice(0, 5),
                bodyScrollHeight: document.body.scrollHeight
            };
        }
        """)

        browser.close()
        return result

url = "https://www.businessit.sn/"

print("=== DESKTOP (1440x900) ===")
d = capture_and_analyze(
    url,
    "C:/Users/Fons NDIAYE/Documents/Claude/Projects/ATECH GROUPE/screenshots/businessit_desktop.png",
    1440, 900
)
print(json.dumps(d, indent=2))

print("\n=== MOBILE (375x812) ===")
m = capture_and_analyze(
    url,
    "C:/Users/Fons NDIAYE/Documents/Claude/Projects/ATECH GROUPE/screenshots/businessit_mobile.png",
    375, 812
)
print(json.dumps(m, indent=2))
