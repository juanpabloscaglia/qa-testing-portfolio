# BUG-001 | Two images fail to render (practice defect report)

> **Context:** This report documents an issue observed on a purposely broken training page. It demonstrates defect-reporting technique; it was **not** submitted as a production bug or reported on behalf of a client.

| Field | Recorded information |
| --- | --- |
| Identifier | BUG-001 |
| Module | Broken Images |
| Application | [The Internet](https://the-internet.herokuapp.com/broken_images) |
| Related test | [TC-001](test-cases.md#tc-001---broken-image-rendering) |
| Recorded environment | macOS · Brave |
| Severity | Medium (practice assessment) |
| Priority | Medium (practice assessment) |
| Tracking status | Open in the original practice record; **not** an external issue ticket |
| Execution context | Portfolio practice (July 2026 report) |

## Preconditions

The training page is accessible in the browser.

## Steps to reproduce

1. Open <https://the-internet.herokuapp.com/broken_images>.
2. Allow the page to finish loading.
3. Inspect the three image positions on the page.

## Expected result

All three image positions display their intended image content without broken-image indicators.

## Actual result recorded

Only one image was displayed correctly. The first two image positions did not render their image content.

## Impact and classification

The exercise shows an image-rendering defect that would affect visual completeness and user experience on an ordinary website. **Medium severity and priority are illustrative judgments**, not categories assigned by the exercise's maintainer. Because this page intentionally demonstrates broken images, it is not evidence of an unexpected issue in a production system.

## Evidence

[View screenshot: TC-001_broken_images_fail.png](evidence/TC-001_broken_images_fail.png)

## Verification notes

- The evidence is a screenshot of the recorded page state.
- No independently recorded HTTP request/response details, root cause, fix, or retest are documented.
- A future troubleshooting exercise could inspect failed image requests in DevTools → Network, recording the returned statuses and requested asset URLs.

[← Back to project overview](README.md)
