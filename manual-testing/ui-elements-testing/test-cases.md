# UI Elements Testing - Test Cases

## Checkboxes

### TC-001 - Verify default checkbox states

**Steps**

1. Open the Checkboxes page.
2. Observe Checkbox 1 and Checkbox 2.

**Expected Result**

Checkbox 1 should be unchecked and Checkbox 2 should be checked.

**Actual Result**

Checkbox 1 was unchecked and Checkbox 2 was checked.

**Status:** PASS

---

### TC-002 - Select Checkbox 1

**Steps**

1. Open the Checkboxes page.
2. Click Checkbox 1.

**Expected Result**

Checkbox 1 should become selected.

**Actual Result**

Checkbox 1 became selected.

**Status:** PASS

---

### TC-003 - Unselect Checkbox 2

**Steps**

1. Open the Checkboxes page.
2. Click Checkbox 2.

**Expected Result**

Checkbox 2 should become unchecked.

**Actual Result**

Checkbox 2 became unchecked.

**Status:** PASS

---

## Dropdown

### TC-004 - Verify default dropdown option

**Steps**

1. Open the Dropdown page.
2. Observe the dropdown before selecting an option.

**Expected Result**

The default value should be `Please select an option`.

**Actual Result**

The default value was displayed correctly.

**Status:** PASS

---

### TC-005 - Select Option 1

**Steps**

1. Open the Dropdown page.
2. Open the dropdown.
3. Select Option 1.

**Expected Result**

Option 1 should become the selected value.

**Actual Result**

Option 1 was selected correctly.

**Status:** PASS

---

### TC-006 - Select Option 2

**Steps**

1. Open the Dropdown page.
2. Open the dropdown.
3. Select Option 2.

**Expected Result**

Option 2 should become the selected value.

**Actual Result**

Option 2 was selected correctly.

**Status:** PASS

---

## JavaScript Alerts

### TC-007 - Click JS Alert and accept it

**Steps**

1. Open the JavaScript Alerts page.
2. Click `Click for JS Alert`.
3. Accept the alert.

**Expected Result**

The alert should close and a confirmation message should be displayed.

**Actual Result**

The alert closed successfully and the result message was displayed.

**Status:** PASS

---

### TC-008 - Click JS Confirm and accept it

**Steps**

1. Click `Click for JS Confirm`.
2. Click OK.

**Expected Result**

The page should display:

`You clicked: Ok`

**Actual Result**

`You clicked: Ok`

**Status:** PASS

---

### TC-009 - Click JS Confirm and cancel it

**Steps**

1. Click `Click for JS Confirm`.
2. Click Cancel.

**Expected Result**

The page should display:

`You clicked: Cancel`

**Actual Result**

`You clicked: Cancel`

**Status:** PASS

---

### TC-010 - Enter text in JS Prompt

**Test Data**

`QA Testing`

**Steps**

1. Click `Click for JS Prompt`.
2. Enter `QA Testing`.
3. Click OK.

**Expected Result**

The page should display:

`You entered: QA Testing`

**Actual Result**

`You entered: QA Testing`

**Status:** PASS
