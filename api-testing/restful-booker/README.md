# Restful Booker API Testing

Manual API testing project performed using the Restful Booker API and Postman.

## API

Restful Booker

Base URL:

https://restful-booker.herokuapp.com

## Objective

Validate core API functionality by sending HTTP requests, analyzing responses, checking status codes, and verifying returned data.

## Scope

The documented scenarios include:

- Create a new booking
- Request a booking using an invalid ID
- Generate an authentication token

## Testing Type

- API Testing
- Functional Testing
- Positive Testing
- Negative Testing
- HTTP Status Code Validation
- Response Body Validation

## Tools

- Postman
- REST API
- JSON
- Git
- GitHub
- Visual Studio Code

## Concepts Practiced

- GET requests
- POST requests
- HTTP status codes
- Request headers
- JSON request bodies
- JSON responses
- Authentication tokens
- Negative testing
- API response validation

## Test Results

| Test Case | Scenario           | Result |
| --------- | ------------------ | ------ |
| TC-003    | Create Booking     | PASS   |
| TC-005    | Invalid Booking ID | PASS   |
| TC-006    | Create Auth Token  | PASS   |

## Evidence

Screenshots captured during execution:

- `TC-003_create_booking_pass.png`
- `TC-005_invalid_booking_id_404_pass.png`
- `TC-006_create_auth_token_pass.png`

The authentication token was hidden/redacted in the evidence before being shared publicly.

## Project Files

- [Test Cases](test-cases.md)
- [Test Summary](test-summary.md)
- [Evidence](evidence/)

## Conclusion

The tested Restful Booker endpoints behaved according to the expected results.

The project demonstrates basic API testing skills using Postman, including request construction, status code validation, response analysis, negative testing, and authentication.
