# Broken Images & Status Codes | Execution Summary

## Recorded session

| Field | Value |
| --- | --- |
| Application | [The Internet](https://the-internet.herokuapp.com/) |
| Modules | Broken Images; Status Codes |
| Date recorded | 2026-07-30 |
| Platform | macOS |
| Browser | Brave |
| Approach | Manual functional and exploratory practice |

## Recorded execution results

| Metric | Result |
| --- | ---: |
| Test cases documented | 5 |
| Passed | 4 |
| Failed | 1 |
| Related practice defect reports | 1 |
| Pass rate | 80% |

| Test case | Scenario | Recorded status | Evidence |
| --- | --- | --- | --- |
| [TC-001](test-cases.md#tc-001---broken-image-rendering) | Image rendering | FAIL | [Screenshot](evidence/TC-001_broken_images_fail.png) |
| [TC-002](test-cases.md#tc-002---http-200-demonstration) | 200 exercise | PASS | None captured |
| [TC-003](test-cases.md#tc-003---http-301-demonstration) | 301 exercise | PASS | None captured |
| [TC-004](test-cases.md#tc-004---http-404-demonstration) | 404 exercise | PASS | None captured |
| [TC-005](test-cases.md#tc-005---http-500-demonstration) | 500 exercise | PASS | None captured |

## Finding

[BUG-001 — Two images fail to render](bug-report.md) documents the recorded failed image check, with reproduction steps, expected vs. actual behavior, and screenshot evidence.

The Broken Images page is a **purpose-built defective test page**, so the report is a **portfolio example**, not a customer-reported production incident. The original practice log used an `Open` status; that is a label in the student's exercise only.

## Limitations

- This report summarizes a **historical execution**, not a new test run.
- The status-code scenarios were recorded as passed based on the exercise's displayed behavior. There is no accompanying HTTP trace establishing independent status/redirect verification.
- Only TC-001 has screenshot evidence in this repository.
- Root cause analysis, a fix, and a formal post-fix regression test are outside the recorded scope.

## Recommended next practice

Re-run the scenarios in a dated session, collecting DevTools Network evidence for image requests and status-code links. Record each request URL, response status, and relevant redirect behavior. Keep the new evidence and results separate from this historical execution.

[← Back to project overview](README.md)
