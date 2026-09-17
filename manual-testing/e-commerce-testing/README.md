# E-commerce Testing - SauceDemo

Manual functional testing project performed on the SauceDemo e-commerce practice application.

## Application

SauceDemo

https://www.saucedemo.com/

## Objective

Validate the main e-commerce user flow, including authentication, product selection, cart management, checkout validation, purchase completion, and order documentation.

## Scope

The following areas were tested:

- Login
- Product selection
- Shopping cart
- Product removal
- Checkout navigation
- Required field validation
- Valid checkout information
- Purchase completion
- Order confirmation
- PDF generation for completed order documentation

## Testing Types

- Manual Testing
- Functional Testing
- Positive Testing
- Negative Testing
- UI Validation
- End-to-End Testing

## Environment

- Operating System: macOS
- Browser: Brave
- Application: SauceDemo

## Test Results

| Metric           | Result |
| ---------------- | -----: |
| Total Test Cases |     12 |
| Passed           |     12 |
| Failed           |      0 |
| Blocked          |      0 |
| Defects Found    |      0 |
| Pass Rate        |   100% |

## Test Coverage

| Test Case | Scenario                                 | Result |
| --------- | ---------------------------------------- | ------ |
| TC-001    | Valid Login                              | PASS   |
| TC-002    | Add Product to Cart                      | PASS   |
| TC-003    | Verify Cart Details                      | PASS   |
| TC-004    | Remove Product from Cart                 | PASS   |
| TC-005    | Proceed to Checkout                      | PASS   |
| TC-006    | Empty Required Checkout Fields           | PASS   |
| TC-007    | Last Name Required Validation            | PASS   |
| TC-008    | Postal Code Required Validation          | PASS   |
| TC-009    | First Name and Last Name Empty           | PASS   |
| TC-010    | Continue with Valid Checkout Information | PASS   |
| TC-011    | Complete Purchase                        | PASS   |
| TC-012    | Generate Order PDF                       | PASS   |

## Project Files

- [Test Cases](test-cases.md)
- [Test Summary](test-summary.md)
- [Evidence](evidence/)

## Conclusion

All twelve test cases passed successfully.

The complete e-commerce flow worked as expected, including login, cart operations, checkout validation, purchase completion, and order confirmation.

No functional defects were identified during this test execution.
