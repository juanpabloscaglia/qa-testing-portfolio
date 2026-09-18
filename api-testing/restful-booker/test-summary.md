# Test Summary Report

## Project

Restful Booker API Testing

## Objective

Validate selected Restful Booker API operations using Postman and verify HTTP methods, status codes, JSON responses, authentication, positive scenarios, and negative scenarios.

## Environment

- Tool: Postman
- API Type: REST
- Data Format: JSON
- Testing Type: Manual API Testing
- Execution Date: 2026-08-12

## Execution Summary

| Status | Count |
|---|---:|
| Total Test Cases | 8 |
| Passed | 8 |
| Failed | 0 |
| Blocked | 0 |
| Bugs Found | 0 |

**Pass Rate:** 100%

## Test Cases Executed

| Test Case | Method | Scenario | Expected Status | Actual Status | Result |
|---|---|---|---:|---:|---|
| TC-001 | GET | Retrieve booking list | 200 | 200 | PASS |
| TC-002 | GET | Retrieve booking by ID | 200 | 200 | PASS |
| TC-003 | POST | Create new booking | 200 | 200 | PASS |
| TC-004 | GET | Retrieve newly created booking | 200 | 200 | PASS |
| TC-005 | GET | Invalid booking ID | 404 | 404 | PASS |
| TC-006 | POST | Create authentication token | 200 | 200 | PASS |
| TC-007 | PUT | Update existing booking | 200 | 200 | PASS |
| TC-008 | DELETE | Delete existing booking | 201 | 201 | PASS |

## Skills Demonstrated

- REST API testing
- Postman
- GET, POST, PUT and DELETE requests
- JSON request bodies
- JSON response validation
- HTTP status code validation
- Positive and negative API testing
- Authentication token handling
- Test evidence collection
- QA documentation

## Evidence

Available evidence:

- `TC-001_get_booking_list_pass.png`
- `TC-002_get_booking_by_id_pass.png`
- `TC-003_create_booking_pass.png`
- `TC-005_invalid_booking_id_404_pass.png`
- `TC-006_create_auth_token_pass.png`
- `TC-007_update_booking_pass.png`
- `TC-008_delete_booking_pass.png`

A separate screenshot was not captured for TC-004.

## Final Result

All eight API test cases passed successfully.

The tested endpoints returned the expected status codes and response data, including successful authentication, update and delete operations, and correct handling of an invalid booking ID.
