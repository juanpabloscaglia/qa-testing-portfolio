# Restful Booker API - Test Cases

## TC-001 - Retrieve booking list

**Method:** GET  
**Endpoint:** `/booking`

### Expected Result

- The API should return HTTP `200`.
- The response should contain a list of booking IDs.

### Actual Result

The API returned HTTP `200` and a list containing multiple booking IDs.

**Status:** PASS

**Evidence:** `TC-001_get_booking_list_pass.png`

---

## TC-002 - Retrieve booking by ID

**Method:** GET  
**Endpoint:** `/booking/{id}`

### Expected Result

- The API should return HTTP `200`.
- The response should contain the selected booking details.

### Actual Result

The API returned HTTP `200` and booking details including fields such as firstname, lastname, totalprice, depositpaid, bookingdates, and additionalneeds.

**Status:** PASS

**Evidence:** `TC-002_get_booking_by_id_pass.png`

---

## TC-003 - Create a new booking

**Method:** POST  
**Endpoint:** `/booking`

### Headers

`Content-Type: application/json`

### Request Body

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

### Expected Result

- The API should return HTTP `200`.
- A new booking should be created.
- The response should contain a generated `bookingid`.
- The response should contain the booking details.

### Actual Result

The API returned HTTP `200`, a generated booking ID, and the booking details.

**Status:** PASS

**Evidence:** `TC-003_create_booking_pass.png`

---

## TC-004 - Retrieve newly created booking

**Method:** GET  
**Endpoint:** `/booking/{created_id}`

### Expected Result

- The API should return HTTP `200`.
- The response should contain the booking details created in TC-003.

### Actual Result

The API returned HTTP `200` and the same booking details created in TC-003.

**Status:** PASS

**Evidence:** No separate screenshot captured.

---

## TC-005 - Request booking with invalid ID

**Method:** GET  
**Endpoint:** `/booking/{invalid_id}`

### Expected Result

The API should return:

`404 Not Found`

### Actual Result

The API returned:

`404 Not Found`

The invalid booking ID was handled correctly.

**Status:** PASS

**Evidence:** `TC-005_invalid_booking_id_404_pass.png`

---

## TC-006 - Create authentication token

**Method:** POST  
**Endpoint:** `/auth`

### Headers

`Content-Type: application/json`

### Request Body

```json
{
  "username": "admin",
  "password": "password123"
}
```

### Expected Result

- The API should return HTTP `200`.
- The response should contain an authentication token.

### Actual Result

The API returned HTTP `200` and a valid authentication token.

The token was redacted from public evidence.

**Status:** PASS

**Evidence:** `TC-006_create_auth_token_pass.png`

---

## TC-007 - Update existing booking

**Method:** PUT  
**Endpoint:** `/booking/{created_id}`

### Expected Result

- The authenticated request should return HTTP `200`.
- The booking should be updated.
- The response should contain the updated booking details.

### Actual Result

The API returned HTTP `200` and the updated booking details, including:

- `totalprice`: 200
- `additionalneeds`: Dinner

**Status:** PASS

**Evidence:** `TC-007_update_booking_pass.png`

---

## TC-008 - Delete existing booking

**Method:** DELETE  
**Endpoint:** `/booking/{created_id}`

### Expected Result

The authenticated request should delete the booking successfully and return HTTP `201`.

### Actual Result

The API returned HTTP `201` and the booking was deleted successfully.

**Status:** PASS

**Evidence:** `TC-008_delete_booking_pass.png`
