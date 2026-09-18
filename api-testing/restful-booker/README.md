# Restful Booker API Testing

Manual API testing project performed using the Restful Booker API and Postman.

## API

Restful Booker

Base URL:

https://restful-booker.herokuapp.com

## Objective

Validate core REST API functionality by sending HTTP requests, analyzing responses, checking status codes, and verifying returned JSON data.

## Scope

The project includes:

- Retrieve the booking list
- Retrieve a booking by ID
- Create a new booking
- Retrieve the newly created booking
- Request an invalid booking ID
- Generate an authentication token
- Update an existing booking
- Delete an existing booking

## Testing Types

- API Testing
- Functional Testing
- Positive Testing
- Negative Testing
- HTTP Status Code Validation
- JSON Response Validation

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
- PUT requests
- DELETE requests
- HTTP status codes
- Request headers
- JSON request bodies
- JSON responses
- Authentication tokens
- Positive and negative testing
- API response validation

## Test Results

| Test Case | Method | Scenario | Result |
|---|---|---|---|
| TC-001 | GET | Retrieve booking list | PASS |
| TC-002 | GET | Retrieve booking by ID | PASS |
| TC-003 | POST | Create new booking | PASS |
| TC-004 | GET | Retrieve newly created booking | PASS |
| TC-005 | GET | Invalid booking ID | PASS |
| TC-006 | POST | Create authentication token | PASS |
| TC-007 | PUT | Update existing booking | PASS |
| TC-008 | DELETE | Delete existing booking | PASS |

**Total Test Cases:** 8  
**Passed:** 8  
**Failed:** 0  
**Pass Rate:** 100%

## Evidence

Screenshots available:

- `TC-001_get_booking_list_pass.png`
- `TC-002_get_booking_by_id_pass.png`
- `TC-003_create_booking_pass.png`
- `TC-005_invalid_booking_id_404_pass.png`
- `TC-006_create_auth_token_pass.png`
- `TC-007_update_booking_pass.png`
- `TC-008_delete_booking_pass.png`

A separate screenshot was not captured for TC-004.

Sensitive authentication information was hidden/redacted in public evidence.

## Project Files

- [Test Cases](test-cases.md)
- [Test Summary](test-summary.md)
- [Evidence](evidence/)

## Conclusion

All eight API test cases passed successfully.

The project demonstrates practical experience with Postman, REST APIs, GET, POST, PUT and DELETE requests, status code validation, JSON response validation, authentication, negative testing, and QA documentation.
