# SauceDemo | Test Execution Summary

## Overview

- **Application:** [SauceDemo](https://www.saucedemo.com/)
- **Project:** E-commerce manual QA practice
- **Recorded platform/browser:** macOS / Brave
- **Testing approach:** Manual functional, positive, negative, and checkout-flow checks
- **Execution date:** Not specified in the original project documents

## Recorded results

| Metric | Result |
| --- | ---: |
| Application functionality checks | 11 |
| QA documentation check | 1 |
| Total documented checks | 12 |
| Passed | 12 |
| Failed | 0 |
| Blocked | 0 |
| Defects recorded | 0 |

**Recorded pass rate: 12/12 (100%)** for this practice execution. This is not a measure of complete product quality or coverage.

## Functional coverage (TC-001 to TC-011)

1. Valid login
2. Add item to cart
3. Verify selected item details in cart
4. Remove item from cart
5. Open checkout
6. Validate completely empty required fields
7. Validate missing last name
8. Validate missing postal code
9. Validate missing first and last name
10. Continue checkout with valid details
11. Complete purchase and view confirmation

**Documentation step (TC-012):** Saving a confirmation record as a PDF. This step was performed for QA evidence and **must not be interpreted as a native SauceDemo invoice/PDF feature**.

## Evidence and traceability

Screenshots exist for **TC-001 through TC-012**, stored in the [`evidence/` folder](evidence/), named by test-case ID. Each test links to its corresponding file in [`test-cases.md`](test-cases.md).

## Findings and limitations

- **Observed:** All documented checks were marked PASS in the original practice records.
- **Observed:** No defects were recorded for the tested scope in that run.
- **Not established by this run:** All possible checkout combinations, cross-browser/device compatibility, mobile responsiveness, accessibility, security, load/performance, or automated regression coverage.
- **No retest performed:** This document clarifies and organizes the existing results; it does not claim fresh execution.

## Recommended follow-up testing

For a future, separately recorded run: check cart totals and tax calculation, boundary inputs for checkout fields, repeated add/remove actions, session behavior, keyboard navigation, and comparison across browsers. Record new results with a date, environment/version, and clear pass/fail evidence.

[Review test cases](test-cases.md) · [View screenshots](evidence/) · [Back to project README](README.md)
