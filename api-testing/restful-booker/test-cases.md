# Restful Booker API - Test Cases

## TC-003 - Create a new booking

**Method:** POST

**Endpoint:**

`/booking`

## Headers

`Content-Type: application/json`

## Request Body

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

## Expected Result

- The booking should be created successfully.
- The API should return a successful HTTP status code.
- The response should contain a generated `bookingid`.
- The response body should contain the booking information sent in the request.

## Actual Result

The booking was created successfully and the API returned the expected booking information.

**Status:** PASS

**Evidence:**

`TC-003_create_booking_pass.png`

---

## TC-005 - Request booking with invalid ID

**Method:** GET

**Endpoint Example:**

`/booking/999999999`

## Expected Result

The API should indicate that the requested booking does not exist.

Expected HTTP status:

`404 Not Found`

## Actual Result

The API returned:

`404 Not Found`

The invalid booking ID was handled correctly.

**Status:** PASS

**Evidence:**

`TC-005_invalid_booking_id_404_pass.png`

---

## TC-006 - Create authentication token

**Method:** POST

**Endpoint:**

`/auth`

## Headers

`Content-Type: application/json`

## Request Body

```json
{
  "username": "admin",
  "password": "password123"
}
```

## Expected Result

- The request should return a successful response.
- The response body should contain an authentication token.

Example response structure:

```json
{
  "token": "********"
}
```

## Actual Result

The API successfully generated an authentication token.

The token was redacted from public evidence for security and good documentation practices.

**Status:** PASS

**Evidence:**

`TC-006_create_auth_token_pass.png`
