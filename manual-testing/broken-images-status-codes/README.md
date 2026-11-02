# Broken Images & HTTP Status Codes | Manual QA Practice

- **Project type:** Educational / practice testing (not client work)
- **Application:** [The Internet](https://the-internet.herokuapp.com/)
- **Recorded environment:** macOS · Brave
- **Recorded execution date:** 2026-07-30

## Objective and scope

Practice image-rendering checks, negative testing, status-code scenarios, and the documentation of an observed issue.

- [Broken Images exercise](https://the-internet.herokuapp.com/broken_images): observe how images render and document a failure.
- [Status Codes exercise](https://the-internet.herokuapp.com/status_codes): follow the demonstration links for HTTP 200, 301, 404 and 500.

The Broken Images page is a **deliberately faulty training exercise**. Its broken images are useful for demonstrating QA reporting, not a newly discovered production defect. The recorded status-code results describe the site's displayed behavior; the original files do **not** establish that every HTTP response was independently captured in DevTools or Postman.

## Recorded results

| Measure | Historical result |
| --- | ---: |
| Documented test cases | 5 |
| Passed | 4 |
| Failed | 1 |
| Practice defect reports | 1 |
| Recorded pass rate | 80% |

These are results from the documented practice execution, **not** a new run or a statement about the site's current behavior.

## Traceability

| Test | Scenario | Recorded status | Related documentation |
| --- | --- | --- | --- |
| TC-001 | Images render correctly | FAIL | [Screenshot](evidence/TC-001_broken_images_fail.png) · [BUG-001](bug-report.md) |
| TC-002 | Status-code exercise: 200 | PASS | [Test case](test-cases.md#tc-002---http-200-demonstration) |
| TC-003 | Status-code exercise: 301 | PASS | [Test case](test-cases.md#tc-003---http-301-demonstration) |
| TC-004 | Status-code exercise: 404 | PASS | [Test case](test-cases.md#tc-004---http-404-demonstration) |
| TC-005 | Status-code exercise: 500 | PASS | [Test case](test-cases.md#tc-005---http-500-demonstration) |

## Project deliverables

- [Test cases: steps, expected and recorded results](test-cases.md)
- [BUG-001: reproducible example defect report](bug-report.md)
- [Execution summary and limitations](test-summary.md)
- [Screenshot evidence](evidence/TC-001_broken_images_fail.png)

## Skills demonstrated

Manual testing · Reproduction steps · Expected vs. actual results · Severity and priority reasoning · Evidence capture · Negative testing · Traceable QA documentation.

## Limits and possible extensions

Only one test has a screenshot in this repository. The recorded exercise does not demonstrate an independently captured network trace for each status code. A future session could use the browser Network panel to record response status, redirects and image-resource failures, with new dated evidence.

[← Back to QA portfolio](../../README.md)
