# Restful Booker | Manual API Test Cases

**System under test:** [Restful Booker](https://restful-booker.herokuapp.com)
**Tool used:** Postman
**Recorded execution:** 2026-08-12
**Status values:** Results below are taken from the existing historical test record; these cases have **not** been re-executed as part of this documentation update.

## TC-001 — Retrieve booking list

- **Method / endpoint:** `GET /booking`
- **Precondition:** API is reachable.
- **Steps:** Send `GET` to the booking collection endpoint; inspect the status and response JSON.
- **Expected:** HTTP `200`; response contains booking identifiers.
- **Recorded actual:** HTTP `200`; a list containing multiple booking IDs was returned.
- **Recorded status:** **PASS**
- **Evidence:** [TC-001 screenshot](evidence/TC-001_get_booking_list_pass.png)

---

## TC-002 — Retrieve booking by ID

- **Method / endpoint:** `GET /booking/{id}`
- **Precondition:** A valid booking ID is available.
- **Steps:** Send a `GET` request using the valid ID; inspect the returned fields.
- **Expected:** HTTP `200`; booking details for the requested ID.
- **Recorded actual:** HTTP `200` and a booking object with fields such as `firstname`, `lastname`, `totalprice`, `depositpaid`, `bookingdates`, and `additionalneeds`.
- **Recorded status:** **PASS**
- **Evidence:** [TC-002 screenshot](evidence/TC-002_get_booking_by_id_pass.png)

---

## TC-003 — Create a booking

- **Method / endpoint:** `POST /booking`
- **Headers:** `Content-Type: application/json`
- **Steps:** Submit the recorded booking JSON and inspect the HTTP status, generated `bookingid` and returned booking object.

**Recorded request body:**

```json
{
  "firstname": "Juan",
  "lastname": "Scaglia",
  "totalprice": 150,
  "depositpaid": true,
  "bookingdates": {
    "checkin": "2026-08-01",
    "checkout": "2026-08-05"
  },
  "additionalneeds": "Breakfast"
}
```

- **Expected:** HTTP `200`; a generated `bookingid` and booking details corresponding to the request.
- **Recorded actual:** HTTP `200`; the response included a generated booking ID and the booking data.
- **Recorded status:** **PASS**
- **Evidence:** [TC-003 screenshot](evidence/TC-003_create_booking_pass.png)

---

## TC-004 — Retrieve the newly created booking

- **Method / endpoint:** `GET /booking/{created_id}`
- **Precondition:** TC-003 returned a booking ID.
- **Steps:** Use that ID in a `GET` request; compare the returned booking object with the data submitted in TC-003.
- **Expected:** HTTP `200`; values match the booking created in TC-003.
- **Recorded actual:** HTTP `200`; the previously created booking details were returned.
- **Recorded status:** **PASS**
- **Evidence:** No individual screenshot was retained for TC-004. This limitation is documented explicitly; no evidence is fabricated.

---

## TC-005 — Retrieve a booking with an invalid ID

- **Method / endpoint:** `GET /booking/{invalid_id}`
- **Precondition:** Use an ID that does not correspond to an available booking.
- **Steps:** Send a `GET` request with that invalid ID; inspect the status.
- **Expected:** HTTP `404 Not Found`.
- **Recorded actual:** HTTP `404 Not Found`.
- **Recorded status:** **PASS** (negative scenario behaved as expected).
- **Evidence:** [TC-005 screenshot](evidence/TC-005_invalid_booking_id_404_pass.png)

---

## TC-006 — Generate an authentication token

- **Method / endpoint:** `POST /auth`
- **Headers:** `Content-Type: application/json`
- **Steps:** Send an authentication request with the published credentials of the **public demo API**; inspect the status and token field. Do not publish an actual token.
- **Expected:** HTTP `200`; response contains an authentication token.
- **Recorded actual:** HTTP `200`; a token was returned.
- **Recorded status:** **PASS**
- **Evidence:** [TC-006 screenshot](evidence/TC-006_create_auth_token_pass.png)

---

## TC-007 — Update a booking

- **Method / endpoint:** `PUT /booking/{created_id}`
- **Preconditions:** A booking exists; authentication token obtained in TC-006 is available.
- **Steps:** Send an authenticated `PUT` request to the created booking ID with an updated booking payload; inspect status and returned data.
- **Expected:** HTTP `200`; response reflects updated booking values.
- **Recorded actual:** HTTP `200`; updated response included `totalprice: 200` and `additionalneeds: Dinner`.
- **Recorded status:** **PASS**
- **Evidence:** [TC-007 screenshot](evidence/TC-007_update_booking_pass.png)

---

## TC-008 — Delete a booking

- **Method / endpoint:** `DELETE /booking/{created_id}`
- **Preconditions:** Created booking exists; authentication is available.
- **Steps:** Send an authenticated `DELETE` request for the created booking; inspect the response status.
- **Expected for this practice API:** HTTP `201` (documented Restful Booker behavior for successful deletion; not a general REST rule).
- **Recorded actual:** HTTP `201`; the original test record reported a successful delete operation.
- **Recorded status:** **PASS**
- **Evidence:** [TC-008 screenshot](evidence/TC-008_delete_booking_pass.png)
- **Coverage limitation:** A separate `GET` after deletion was **not documented**; therefore the historical result does not demonstrate an independently verified post-delete `404`.

---

## Additional notes

- Statuses and observations are preserved from the original project files; no new execution results were added.
- The screenshots capture evidence for seven cases; TC-004 has no individual screenshot.
- Tests were designed for a **training API**, not a production customer system.
- For a more rigorous suite, add request examples for all cases, Postman assertions, test-data management, and a separate verification step after update/deletion.

[← Project overview](README.md) · [Execution summary](test-summary.md)
