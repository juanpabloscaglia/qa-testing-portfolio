# SauceDemo | Documented Manual Test Cases

**Application:** [SauceDemo](https://www.saucedemo.com/)
**Environment used:** macOS · Brave
**Context:** Learning/practice execution. Each result below reflects the recorded execution, not a new test run.

## TC-001 — Login with valid credentials

**Steps**
1. Open SauceDemo.
2. Enter valid credentials.
3. Click **Login**.

**Expected:** The user reaches the Products page.
**Recorded actual:** The user was redirected to the Products page.
**Status:** PASS · [Evidence](evidence/TC-001_valid_login_pass.png)

## TC-002 — Add product to cart

**Steps**
1. Log in.
2. Find the Sauce Labs Backpack.
3. Click **Add to cart**.

**Expected:** The product is added and the cart badge shows `1`.
**Recorded actual:** The product was added and the cart badge showed `1`.
**Status:** PASS · [Evidence](evidence/TC-002_add_product_to_cart_pass.png)

## TC-003 — Verify product details in cart

**Steps**
1. Add a product to the cart.
2. Open the cart.
3. Compare the product name, description, quantity, and price with the selected item.

**Expected:** Cart details match the selected product.
**Recorded actual:** Cart information was correct.
**Status:** PASS · [Evidence](evidence/TC-003_verify_cart_contents_pass.png)

## TC-004 — Remove product from cart

**Steps**
1. Add a product to the cart.
2. Open the cart.
3. Click **Remove**.

**Expected:** The product is removed.
**Recorded actual:** The product was removed.
**Status:** PASS · [Evidence](evidence/TC-004_remove_product_from_cart_pass.png)

## TC-005 — Proceed to checkout

**Precondition:** At least one product is in the cart.

**Steps**
1. Open the cart.
2. Click **Checkout**.

**Expected:** The checkout information page is displayed.
**Recorded actual:** The checkout information page appeared.
**Status:** PASS · [Evidence](evidence/TC-005_proceed_to_checkout_pass.png)

## TC-006 — Submit checkout with all required fields empty

**Precondition:** Checkout information page is open.

**Steps**
1. Leave all required fields blank.
2. Click **Continue**.

**Expected:** Checkout is blocked and a required-field validation message appears.
**Recorded actual:** Checkout was blocked and validation appeared.
**Status:** PASS · [Evidence](evidence/TC-006_empty_checkout_fields_validation_pass.png)

## TC-007 — Validate missing last name

**Precondition:** Checkout information page is open.

**Steps**
1. Enter a first name.
2. Leave last name blank.
3. Enter a postal code.
4. Click **Continue**.

**Expected:** Checkout is blocked and the missing last name is identified.
**Recorded actual:** Checkout was blocked and the missing last name was validated.
**Status:** PASS · [Evidence](evidence/TC-007_last_name_checkout_validation_pass.png)

## TC-008 — Validate missing postal code

**Precondition:** Checkout information page is open.

**Steps**
1. Enter a first name and last name.
2. Leave postal code blank.
3. Click **Continue**.

**Expected:** Checkout is blocked and the missing postal code is identified.
**Recorded actual:** Checkout was blocked and the missing postal code was validated.
**Status:** PASS · [Evidence](evidence/TC-008_postal_code_checkout_validation_pass.png)

## TC-009 — Validate missing first and last name

**Precondition:** Checkout information page is open.

**Steps**
1. Leave first and last name blank.
2. Enter a postal code.
3. Click **Continue**.

**Expected:** Checkout is blocked and missing required information is validated.
**Recorded actual:** Checkout was blocked and validation was displayed.
**Status:** PASS · [Evidence](evidence/TC-009_first_and_last_name_checkout_validation_pass.png)

## TC-010 — Continue checkout with valid information

**Precondition:** Checkout information page is open.

**Steps**
1. Enter a valid first name, last name, and postal code.
2. Click **Continue**.

**Expected:** The checkout overview page is displayed.
**Recorded actual:** The checkout overview page was displayed.
**Status:** PASS · [Evidence](evidence/TC-010_valid_checkout_information_pass.png)

## TC-011 — Complete purchase

**Precondition:** Checkout overview page is open.

**Steps**
1. Review the order information.
2. Click **Finish**.

**Expected:** Purchase completion is confirmed.
**Recorded actual:** The completion confirmation was displayed.
**Status:** PASS · [Evidence](evidence/TC-011_complete_purchase_pass.png)

## TC-012 — Save order confirmation as a PDF (QA documentation)

**Classification:** Documentation/evidence collection, **not a SauceDemo product-feature test**.
**Precondition:** Purchase confirmation was displayed.

**Steps**
1. Open the completed-order confirmation.
2. Export or save the confirmation view as a PDF using available browser/OS functionality.
3. Save the file as test documentation.

**Expected:** A readable PDF record of the confirmation is saved.
**Recorded actual:** A PDF record was generated successfully.
**Status:** PASS · [Evidence](evidence/TC-012_generate_order_pdf_pass.png)

---

**Execution notes:** These cases document the observed results of the original practice run. The execution date is not specified in the existing SauceDemo records. No retest is implied by this documentation update. Screenshots are linked by test-case ID.
