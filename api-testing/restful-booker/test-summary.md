# Restful Booker | Test Execution Summary

## Execution record

| Field | Recorded value |
| --- | --- |
| Project | Restful Booker — manual REST API testing |
| Application | https://restful-booker.herokuapp.com |
| Tool | Postman |
| Type | Manual functional API verification |
| Execution date | 2026-08-12 |
| Documented cases | 8 |
| PASS | 8 |
| FAIL | 0 |
| Blocked | 0 |
| Bugs recorded | 0 |
| Evidence screenshots | 7 (none for TC-004) |

**Recorded pass rate:** 8/8 (100%) for this specific historical run. This does not imply that all endpoints or current API behavior have been verified.

## Case-level results

| ID | Operation | Expected HTTP | Recorded HTTP | Status | Evidence |
| --- | --- | ---: | ---: | --- | --- |
| TC-001 | GET booking list | 200 | 200 | PASS | [View](evidence/TC-001_get_booking_list_pass.png) |
| TC-002 | GET booking by ID | 200 | 200 | PASS | [View](evidence/TC-002_get_booking_by_id_pass.png) |
| TC-003 | POST new booking | 200 | 200 | PASS | [View](evidence/TC-003_create_booking_pass.png) |
| TC-004 | GET newly created booking | 200 | 200 | PASS | No individual screenshot |
| TC-005 | GET invalid booking ID | 404 | 404 | PASS | [View](evidence/TC-005_invalid_booking_id_404_pass.png) |
| TC-006 | POST auth token | 200 | 200 | PASS | [View](evidence/TC-006_create_auth_token_pass.png) |
| TC-007 | PUT booking update | 200 | 200 | PASS | [View](evidence/TC-007_update_booking_pass.png) |
| TC-008 | DELETE booking | 201 | 201 | PASS | [View](evidence/TC-008_delete_booking_pass.png) |

## Findings and interpretation

- The documented cases exercised `GET`, `POST`, `PUT`, and `DELETE` with expected responses for the selected operations.
- The invalid-booking `404` in TC-005 is **expected behavior** and therefore a passing negative test, not a defect.
- The `201` recorded for the DELETE request is a convention of this **practice API**, not a general rule for DELETE methods.
- The original records describe updates to `totalprice` and `additionalneeds`, but do not include a separate follow-up retrieval validating persistence.
- A separate read-after-delete confirmation was also not documented, so successful deletion was reported based on the recorded DELETE response.

## Evidence and traceability

Seven screenshot files are linked from the table and retained in [evidence/](evidence/). TC-004 has a documented result but no standalone screenshot. Screenshots are historical evidence and are **not** presented as a recent execution.

## Scope boundaries

This portfolio project demonstrates foundational manual API testing and QA reporting. It does **not** document comprehensive schema tests, performance/security tests, automated Postman assertions, repeated executions, or a downloadable Postman collection. The practice API may change, and recorded results are not guarantees of future responses.

## Recommended next execution

Export a sanitized Postman collection, automate response assertions, explicitly verify updated fields via a follow-up `GET`, verify deletion via a separate `GET`, and record new execution dates and screenshots. These are **recommendations**, not completed tests.

[← Project overview](README.md) · [Detailed test cases](test-cases.md)
