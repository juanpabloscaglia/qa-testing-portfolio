# Broken Images & Status Codes - Test Cases

## TC-001 - Verify images load correctly

**Module:** Broken Images

### Steps

1. Open the Broken Images page.
2. Wait until the page finishes loading.
3. Inspect all displayed images.

### Expected Result

All images should load correctly.

### Actual Result

Only one image loaded correctly. The first two images were broken.

**Status:** FAIL

**Related Defect:** BUG-001

---

## TC-002 - Verify HTTP 200 status code

**Module:** Status Codes

### Steps

1. Open the Status Codes page.
2. Select HTTP status code 200.

### Expected Result

The application should display information confirming HTTP status code 200.

### Actual Result

The page displayed:

`This page returned a 200 status code.`

**Status:** PASS

---

## TC-003 - Verify HTTP 301 status code

**Module:** Status Codes

### Steps

1. Open the Status Codes page.
2. Select HTTP status code 301.

### Expected Result

The application should return status code 301 and display information about it.

### Actual Result

The page correctly displayed information related to HTTP status code 301.

**Status:** PASS

---

## TC-004 - Verify HTTP 404 status code

**Module:** Status Codes

### Steps

1. Open the Status Codes page.
2. Select HTTP status code 404.

### Expected Result

The application should return status code 404 and display information about it.

### Actual Result

The page correctly displayed information related to HTTP status code 404.

**Status:** PASS

---

## TC-005 - Verify HTTP 500 status code

**Module:** Status Codes

### Steps

1. Open the Status Codes page.
2. Select HTTP status code 500.

### Expected Result

The application should return status code 500 and display information about it.

### Actual Result

The page correctly displayed information related to HTTP status code 500.

**Status:** PASS
