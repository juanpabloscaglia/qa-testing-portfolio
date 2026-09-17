# Login Testing - Test Cases

## Test Credentials

Valid username:

`tomsmith`

Valid password:

`SuperSecretPassword!`

---

## TC-001 - Login with valid credentials

**Steps**

1. Open the Login page.
2. Enter a valid username.
3. Enter a valid password.
4. Click Login.

**Expected Result**

The user should successfully access the secure area.

**Actual Result**

The user successfully accessed the secure area and the following message was displayed:

`You logged into a secure area!`

**Status:** PASS

---

## TC-002 - Login with invalid username

**Steps**

1. Open the Login page.
2. Enter an invalid username.
3. Enter the valid password.
4. Click Login.

**Expected Result**

The system should reject the login attempt and display an error message.

**Actual Result**

The system displayed:

`Your username is invalid!`

**Status:** PASS

---

## TC-003 - Login with invalid password

**Steps**

1. Open the Login page.
2. Enter the valid username.
3. Enter an invalid password.
4. Click Login.

**Expected Result**

The system should reject the login attempt and display an invalid password message.

**Actual Result**

The system displayed:

`Your password is invalid!`

**Status:** PASS

---

## TC-004 - Login with empty username

**Steps**

1. Open the Login page.
2. Leave the username field empty.
3. Enter the valid password.
4. Click Login.

**Expected Result**

The system should prevent authentication.

**Actual Result**

The system displayed:

`Your username is invalid!`

**Status:** PASS

---

## TC-005 - Login with empty password

**Steps**

1. Open the Login page.
2. Enter the valid username.
3. Leave the password field empty.
4. Click Login.

**Expected Result**

The system should prevent authentication.

**Actual Result**

The system displayed:

`Your password is invalid!`

**Status:** PASS

---

## TC-006 - Login with both fields empty

**Steps**

1. Open the Login page.
2. Leave the username field empty.
3. Leave the password field empty.
4. Click Login.

**Expected Result**

The system should prevent authentication and validate the missing credentials.

**Actual Result**

The system validated the username first and displayed:

`Your username is invalid!`

**Status:** PASS

---

## TC-007 - Logout

**Precondition**

The user is logged into the secure area.

**Steps**

1. Click the Logout button.

**Expected Result**

The user should be logged out and redirected to the Login page.

**Actual Result**

The user was redirected to the Login page and the logout confirmation message was displayed.

**Status:** PASS

---

## TC-008 - Password case sensitivity

**Steps**

1. Open the Login page.
2. Enter the valid username.
3. Enter the valid password using incorrect capitalization.
4. Click Login.

**Expected Result**

Authentication should fail because passwords are case-sensitive.

**Actual Result**

The system displayed:

`Your password is invalid!`

**Status:** PASS
