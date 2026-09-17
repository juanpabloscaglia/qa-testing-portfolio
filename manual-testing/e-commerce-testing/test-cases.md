# SauceDemo E-commerce Testing - Test Cases

## TC-001 - Login with valid credentials

### Steps

1. Open SauceDemo.
2. Enter valid credentials.
3. Click Login.

### Expected Result

The user should successfully access the Products page.

### Actual Result

The user was redirected to the Products page.

**Status:** PASS

**Evidence:**

`TC-001_valid_login_pass.png`

---

## TC-002 - Add product to cart

### Steps

1. Login successfully.
2. Locate Sauce Labs Backpack.
3. Click Add to Cart.

### Expected Result

The product should be added to the cart and the cart badge should display `1`.

### Actual Result

The product was successfully added and the cart badge displayed `1`.

**Status:** PASS

---

## TC-003 - Verify product information in cart

### Steps

1. Add a product to the cart.
2. Open the shopping cart.
3. Review the product information.

### Expected Result

The product name, description, quantity, and price should match the selected product.

### Actual Result

The product information displayed in the cart was correct.

**Status:** PASS

---

## TC-004 - Remove product from cart

### Steps

1. Add a product to the cart.
2. Open the cart.
3. Click Remove.

### Expected Result

The product should be removed from the cart.

### Actual Result

The product was successfully removed.

**Status:** PASS

---

## TC-005 - Proceed to checkout

### Preconditions

A product is present in the shopping cart.

### Steps

1. Open the shopping cart.
2. Click Checkout.

### Expected Result

The user should be redirected to the checkout information page.

### Actual Result

The checkout information page was displayed correctly.

**Status:** PASS

---

## TC-006 - Submit checkout with all required fields empty

### Steps

1. Open the checkout information page.
2. Leave all required fields empty.
3. Click Continue.

### Expected Result

The checkout should not continue and the application should display required-field validation.

### Actual Result

The application prevented the checkout from continuing and displayed the required validation.

**Status:** PASS

**Evidence:**

`TC-006_empty_checkout_fields_validation_pass.png`

---

## TC-007 - Submit checkout without Last Name

### Steps

1. Enter a valid First Name.
2. Leave Last Name empty.
3. Enter a valid Postal Code.
4. Click Continue.

### Expected Result

The checkout should not continue and a validation message should indicate that Last Name is required.

### Actual Result

The application prevented checkout continuation and correctly validated the missing Last Name.

**Status:** PASS

---

## TC-008 - Submit checkout without Postal Code

### Steps

1. Enter a valid First Name.
2. Enter a valid Last Name.
3. Leave Postal Code empty.
4. Click Continue.

### Expected Result

The checkout should not continue and a validation message should indicate that Postal Code is required.

### Actual Result

The application prevented checkout continuation and correctly validated the missing Postal Code.

**Status:** PASS

---

## TC-009 - Submit checkout without First Name and Last Name

### Steps

1. Leave First Name empty.
2. Leave Last Name empty.
3. Enter a valid Postal Code.
4. Click Continue.

### Expected Result

The checkout should not continue and the application should validate the missing required information.

### Actual Result

The application prevented checkout continuation and displayed the required-field validation.

**Status:** PASS

---

## TC-010 - Continue checkout with valid information

### Steps

1. Enter a valid First Name.
2. Enter a valid Last Name.
3. Enter a valid Postal Code.
4. Click Continue.

### Expected Result

The user should continue to the checkout overview page.

### Actual Result

The checkout overview page was displayed successfully.

**Status:** PASS

---

## TC-011 - Complete purchase

### Preconditions

The user is on the Checkout Overview page.

### Steps

1. Review the order information.
2. Click Finish.

### Expected Result

The purchase should be completed and an order confirmation page should be displayed.

### Actual Result

The purchase was completed successfully and the confirmation page was displayed.

**Status:** PASS

---

## TC-012 - Generate PDF of completed order

### Preconditions

The purchase has been successfully completed.

### Steps

1. Open the completed order confirmation.
2. Generate a PDF from the confirmation page.
3. Save the document.

### Expected Result

A readable PDF containing the completed order confirmation should be generated successfully.

### Actual Result

The PDF was generated successfully.

**Status:** PASS
