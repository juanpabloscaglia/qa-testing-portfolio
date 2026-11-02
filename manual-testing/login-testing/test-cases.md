# Login Testing | Test Cases

**Practice application:** https://the-internet.herokuapp.com/login
**Recorded execution:** Historical project documentation; tests were not rerun during this documentation update.

**Demo credentials (public training site only):** `tomsmith` / `SuperSecretPassword!`. These are public sample credentials, not personal or production credentials.

## TC-001 — Valid login

**Steps**

1. Open the Form Authentication page.
2. Enter valid username `tomsmith`.
3. Enter valid password `SuperSecretPassword!`.
4. Click **Login**.

**Expected result:** The user reaches the secure area.

**Recorded actual result:** The user reached the secure area; the page displayed `You logged into a secure area!`.

**Recorded status:** PASS

**Evidence:** [Screenshot](evidence/TC-001_valid_login_pass.png)

---

## TC-002 — Invalid username

**Steps**

1. Open the login page.
2. Enter an invalid username and the valid demo password.
3. Click **Login**.

**Expected result:** Access is denied with an appropriate username error.

**Recorded actual result:** The page displayed `Your username is invalid!`.

**Recorded status:** PASS

**Evidence:** [Screenshot](evidence/TC-002_invalid_username_error_pass.png)

---

## TC-003 — Invalid password

**Steps**

1. Open the login page.
2. Enter the valid demo username and an invalid password.
3. Click **Login**.

**Expected result:** Access is denied with an appropriate password error.

**Recorded actual result:** The page displayed `Your password is invalid!`.

**Recorded status:** PASS

**Evidence:** [Screenshot](evidence/TC-003_invalid_password_error_pass.png)

---

## TC-004 — Empty username

**Steps**

1. Open the login page.
2. Leave the username empty and enter the valid demo password.
3. Click **Login**.

**Expected result:** The application prevents login.

**Recorded actual result:** The page displayed `Your username is invalid!`.

**Recorded status:** PASS

**Evidence:** No individual screenshot was saved.

---

## TC-005 — Empty password

**Steps**

1. Open the login page.
2. Enter the valid demo username and leave the password empty.
3. Click **Login**.

**Expected result:** The application prevents login.

**Recorded actual result:** The page displayed `Your password is invalid!`.

**Recorded status:** PASS

**Evidence:** No individual screenshot was saved.

---

## TC-006 — Both credentials empty

**Steps**

1. Open the login page.
2. Leave both fields blank.
3. Click **Login**.

**Expected result:** The application prevents login and reports a validation error.

**Recorded actual result:** The page displayed `Your username is invalid!` (username checked first).

**Recorded status:** PASS

**Evidence:** No individual screenshot was saved.

---

## TC-007 — Logout

**Steps**

1. Log in with the valid demo credentials.
2. Click **Logout**.

**Expected result:** The session ends and the login page is displayed.

**Recorded actual result:** The user returned to the login page and saw the logout confirmation.

**Recorded status:** PASS

**Evidence:** [Screenshot](evidence/TC-007_logout_pass.png)

---

## TC-008 — Password case sensitivity

**Steps**

1. Open the login page.
2. Enter the valid username and change the capitalization of the valid password.
3. Click **Login**.

**Expected result:** Authentication is rejected because the password is case-sensitive.

**Recorded actual result:** The page displayed `Your password is invalid!`.

**Recorded status:** PASS

**Evidence:** No individual screenshot was saved.

---
