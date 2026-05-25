from playwright.sync_api import sync_playwright
import json

def capture_and_analyze(url, output_path, viewport_width, viewport_height, label):
    with sync_playwright() as p:
        browser = p.chromium.launch()
        page = browser.new_page(viewport={'width': viewport_width, 'height': viewport_height})
        page.goto(url, wait_until='networkidle', timeout=60000)

        # Wait a bit for any animations/lazy loads
        page.wait_for_timeout(2000)

        # Take screenshot
        page.screenshot(path=output_path, full_page=False)

        # Analyze hero/slider section dimensions
        hero_data = page.evaluate("""
        () => {
            // Common hero/slider selectors
            const selectors = [
                '.slider', '.hero', '.banner', '.swiper', '.owl-carousel',
                '[class*="slider"]', '[class*="hero"]', '[class*="banner"]',
                '[class*="swiper"]', '[id*="slider"]', '[id*="hero"]',
                '[id*="banner"]', 'header', '.carousel', '.slideshow',
                '[class*="carousel"]', '.main-slider', '#main-slider',
                '.tp-banner', '#rev_slider', '.rev_slider_wrapper'
            ];

            let heroInfo = null;
            let allCandidates = [];

            for (const sel of selectors) {
                try {
                    const el = document.querySelector(sel);
                    if (el) {
                        const rect = el.getBoundingClientRect();
                        const style = window.getComputedStyle(el);
                        if (rect.width > 300 && rect.height > 100) {
                            allCandidates.push({
                                selector: sel,
                                tag: el.tagName,
                                id: el.id,
                                classes: el.className.substring(0, 100),
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
                                position: style.position
                            });
                        }
                    }
                } catch(e) {}
            }

            // Find the element that spans the top of the page and is large
            const viewportH = window.innerHeight;
            const viewportW = window.innerWidth;

            // Pick the best candidate: largest element near top
            let best = null;
            let bestScore = 0;
            for (const c of allCandidates) {
                // Score: prefer tall elements near top
                const heightRatio = c.rect.height / viewportH;
                const isAtTop = c.rect.top <= 100;
                const widthRatio = c.rect.width / viewportW;
                const score = heightRatio * widthRatio * (isAtTop ? 2 : 1);
                if (score > bestScore) {
                    bestScore = score;
                    best = c;
                }
            }

            return {
                viewport: { width: viewportW, height: viewportH },
                bestCandidate: best,
                allCandidates: allCandidates.slice(0, 8),
                pageTitle: document.title
            };
        }
        """)

        browser.close()
        return hero_data

url = "https://www.businessit.sn/"

# Desktop 1440x900
print("=== DESKTOP (1440x900) ===")
desktop_data = capture_and_analyze(
    url,
    "C:/Users/Fons NDIAYE/Documents/Claude/Projects/ATECH GROUPE/screenshots/businessit_desktop.png",
    1440, 900, "desktop"
)
print(json.dumps(desktop_data, indent=2))

# Mobile 375x812
print("\n=== MOBILE (375x812) ===")
mobile_data = capture_and_analyze(
    url,
    "C:/Users/Fons NDIAYE/Documents/Claude/Projects/ATECH GROUPE/screenshots/businessit_mobile.png",
    375, 812, "mobile"
)
print(json.dumps(mobile_data, indent=2))
