# Restful Booker | Manual API Testing with Postman

**Project type:** Learning and practice portfolio
**API:** [Restful Booker](https://restful-booker.herokuapp.com)
**Recorded execution date:** 2026-08-12
**Tools:** Postman, JSON, Git and GitHub

## Objective

Practice manual verification of a REST API by sending requests, checking documented HTTP responses, inspecting JSON fields, handling a demo authentication token, and recording clear test evidence.

## Tested scope

- `GET /booking` — retrieve booking identifiers.
- `GET /booking/{id}` — retrieve a known booking.
- `POST /booking` — create a booking and capture its generated ID.
- `GET /booking/{created_id}` — retrieve the created record.
- `GET /booking/{invalid_id}` — check expected `404 Not Found` behavior.
- `POST /auth` — obtain a token for modifying a booking.
- `PUT /booking/{created_id}` — update a booking with an authenticated request.
- `DELETE /booking/{created_id}` — delete a booking with an authenticated request.

This is a **documented manual exercise**, not a claim of automated coverage, full API coverage, or work performed for a paying client.

## Recorded execution

| Result | Count |
| --- | ---: |
| Documented test cases | 8 |
| PASS (original execution) | 8 |
| FAIL (original execution) | 0 |
| Blocked (original execution) | 0 |
| Reported defects in this run | 0 |
| Screenshots retained | 7 |

The results above are from the **recorded run on 2026-08-12**; they are not a new execution or a statement about current API behavior. TC-004 was documented as PASS but has **no separate screenshot**.

### Test-case index and evidence

| ID | Method | Scenario | Recorded result | Evidence |
| --- | --- | --- | --- | --- |
| TC-001 | GET | List booking IDs | PASS | [Screenshot](evidence/TC-001_get_booking_list_pass.png) |
| TC-002 | GET | Get booking by ID | PASS | [Screenshot](evidence/TC-002_get_booking_by_id_pass.png) |
| TC-003 | POST | Create booking | PASS | [Screenshot](evidence/TC-003_create_booking_pass.png) |
| TC-004 | GET | Retrieve newly created booking | PASS | Not separately captured |
| TC-005 | GET | Invalid ID returns 404 | PASS | [Screenshot](evidence/TC-005_invalid_booking_id_404_pass.png) |
| TC-006 | POST | Generate auth token | PASS | [Screenshot](evidence/TC-006_create_auth_token_pass.png) |
| TC-007 | PUT | Update booking | PASS | [Screenshot](evidence/TC-007_update_booking_pass.png) |
| TC-008 | DELETE | Delete booking | PASS | [Screenshot](evidence/TC-008_delete_booking_pass.png) |

**Note about HTTP 201:** Restful Booker has historically returned `201` for a successful booking deletion. This differs from the `204` response commonly used in other REST APIs; the documented expectation here follows this practice API and the recorded execution, not a universal REST convention.

## Reproducing the exercise in Postman

1. Create a Postman collection and set a collection variable, `baseUrl`, to `https://restful-booker.herokuapp.com`.
2. Execute `GET {{baseUrl}}/booking` and inspect the response list.
3. Retrieve an available booking ID using `GET {{baseUrl}}/booking/{id}`.
4. Send `POST {{baseUrl}}/booking` with a JSON request body, then save the returned `bookingid` as `createdId`.
5. Retrieve the new booking using `GET {{baseUrl}}/booking/{{createdId}}` and compare its data with the creation request.
6. Request a clearly invalid booking ID and check for the documented `404` response.
7. Send `POST {{baseUrl}}/auth` using the API's published **demo credentials**; keep the token private and use it to authenticate update/delete requests.
8. Send an authenticated `PUT {{baseUrl}}/booking/{{createdId}}` with a complete JSON booking body, then an authenticated `DELETE` request to the same booking ID.

These are **reproduction guidelines**, not a claim that a reusable Postman collection or automated assertions are included in this repository. See the exact case-level historical observations in [test-cases.md](test-cases.md).

## Project documentation

- [Test cases: steps, expectations, recorded results](test-cases.md)
- [Historical test execution summary and limitations](test-summary.md)
- [Captured screenshots](evidence/)

## Quality notes and limitations

- An expected `404` from the invalid-ID negative scenario is a **PASS**, not a defect.
- An HTTP success code alone is not exhaustive proof of correct business behavior; validating required JSON fields and record state is also important.
- The execution report records one session, not repeated tests across environments or API versions.
- The repository does not presently contain an exported Postman collection, automated scripts, performance tests, or security tests.
- Sensitive token values should never be committed to a public repository. Example credentials for this public demo API are not credentials for a private system.

## Suggested future extensions (not yet executed)

- Export a sanitized Postman collection and environment with no secrets.
- Add assertions for field types, response payloads and updated booking values.
- Verify that a deleted booking cannot be retrieved in a separate follow-up test.
- Add boundary values, invalid payloads, and negative authentication scenarios.

[← Back to QA portfolio](../../README.md)
