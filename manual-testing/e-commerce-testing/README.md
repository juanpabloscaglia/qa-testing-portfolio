# SauceDemo | Manual E-commerce QA Project

**Project type:** Learning and practice portfolio · **Testing:** Manual functional / positive / negative / end-to-end checks

**Application:** [SauceDemo](https://www.saucedemo.com/)
**Recorded environment:** macOS · Brave browser
**Objective:** Assess the primary shopping workflow from sign-in through purchase confirmation and document the test execution.

## Scope

The exercise covers:

- Successful login and access to the product catalog
- Adding products to the cart, checking cart contents, and removing products
- Moving from the cart to checkout
- Required-field validation in checkout forms
- Entering valid customer information
- Completing a purchase and reviewing the confirmation screen
- Saving the confirmation as a PDF **for QA documentation** (a tester-side task, not an advertised SauceDemo product feature)

## Recorded execution results

| Measure | Recorded result |
| --- | ---: |
| Total documented checks | 12 |
| Application functionality checks (TC-001–TC-011) | 11 |
| Documentation check (TC-012) | 1 |
| Passed | 12 |
| Failed | 0 |
| Blocked | 0 |
| Defects recorded in this execution | 0 |

The 12/12 result describes **this documented run only**. It does not indicate comprehensive test coverage or guarantee that the website is bug-free. The date of this run is not specified in the source documentation.

## Test cases and evidence

| ID | Scenario | Recorded status | Screenshot |
| --- | --- | --- | --- |
| TC-001 | Valid login | PASS | [View](evidence/TC-001_valid_login_pass.png) |
| TC-002 | Add a product to the cart | PASS | [View](evidence/TC-002_add_product_to_cart_pass.png) |
| TC-003 | Verify cart contents | PASS | [View](evidence/TC-003_verify_cart_contents_pass.png) |
| TC-004 | Remove a product from the cart | PASS | [View](evidence/TC-004_remove_product_from_cart_pass.png) |
| TC-005 | Proceed to checkout | PASS | [View](evidence/TC-005_proceed_to_checkout_pass.png) |
| TC-006 | Submit with all required fields empty | PASS | [View](evidence/TC-006_empty_checkout_fields_validation_pass.png) |
| TC-007 | Validate missing last name | PASS | [View](evidence/TC-007_last_name_checkout_validation_pass.png) |
| TC-008 | Validate missing postal code | PASS | [View](evidence/TC-008_postal_code_checkout_validation_pass.png) |
| TC-009 | Validate missing first and last name | PASS | [View](evidence/TC-009_first_and_last_name_checkout_validation_pass.png) |
| TC-010 | Continue with valid checkout information | PASS | [View](evidence/TC-010_valid_checkout_information_pass.png) |
| TC-011 | Complete purchase | PASS | [View](evidence/TC-011_complete_purchase_pass.png) |
| TC-012 | Save order confirmation as a PDF for evidence | PASS | [View](evidence/TC-012_generate_order_pdf_pass.png) |

## QA deliverables

- [Test cases with steps, expected and actual results](test-cases.md)
- [Execution summary and limitations](test-summary.md)
- [Screenshots captured for this practice run](evidence/)

## Skills demonstrated

Test-case design · Functional verification · Positive and negative scenarios · Checkout field validation · Evidence collection · Test reporting · Git/GitHub documentation.

## Limitations and next opportunities

This is an educational test exercise, **not a client engagement**. The records do not establish a cross-browser, mobile-device, accessibility, performance, security, or automated-testing assessment. Potential extensions include repeat runs across browsers, more boundary-value cases, and a documented exploratory session.

[← Back to full QA portfolio](../../README.md)
