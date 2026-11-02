# Login Testing | Manual Functional QA

**Portfolio status:** Educational practice project (not client work)
**Application:** [The Internet — Form Authentication](https://the-internet.herokuapp.com/login)
**Recorded environment:** macOS · Brave browser
**Execution date:** Not specified in the original records

## Goal

Verify positive and negative login scenarios, handling of missing credentials, password case sensitivity, and logout behavior through structured manual test cases.

## Recorded execution

| Metric | Value |
| --- | ---: |
| Documented test cases | 8 |
| Passed | 8 |
| Failed | 0 |
| Blocked | 0 |
| Defects recorded in this execution | 0 |
| Saved evidence screenshots | 4 |

These results reflect **one documented practice execution**. They are not a fresh retest or proof that the application has no defects.

## Test coverage and evidence

| ID | Scenario | Recorded result | Evidence |
| --- | --- | --- | --- |
| TC-001 | Valid login | PASS | [Screenshot](evidence/TC-001_valid_login_pass.png) |
| TC-002 | Invalid username | PASS | [Screenshot](evidence/TC-002_invalid_username_error_pass.png) |
| TC-003 | Invalid password | PASS | [Screenshot](evidence/TC-003_invalid_password_error_pass.png) |
| TC-004 | Empty username | PASS | Not captured |
| TC-005 | Empty password | PASS | Not captured |
| TC-006 | Both credentials empty | PASS | Not captured |
| TC-007 | Logout | PASS | [Screenshot](evidence/TC-007_logout_pass.png) |
| TC-008 | Password case sensitivity | PASS | Not captured |

## Deliverables

- [Reproduction steps, expected and actual results](test-cases.md)
- [Execution summary, scope and limitations](test-summary.md)
- [Evidence directory](evidence/)

## Skills demonstrated

Test design · Positive and negative functional testing · Authentication scenarios · Input validation · Session/logout checks · Screenshot evidence · Clear QA reporting.

## Limitations and next steps

The original records cover a single browser environment and do not contain performance, accessibility, security or cross-browser results. Four cases have screenshots, not all eight. Future work could add browser matrix checks, session-expiry cases and dated retest evidence.

[← Back to QA portfolio](../../README.md)
