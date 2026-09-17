# Login Testing Project

Manual functional testing project performed on the Login feature of **The Internet** web application.

## Application

The Internet - Form Authentication

https://the-internet.herokuapp.com/login

## Objective

Validate the authentication flow and verify the system behavior when users enter valid, invalid, or incomplete credentials.

## Scope

The following scenarios were tested:

- Valid login
- Invalid username
- Invalid password
- Empty username
- Empty password
- Empty credentials
- Logout
- Password case sensitivity

## Test Coverage

Login Page → Credential Validation → Authentication → User Session → Logout

## Testing Type

- Manual Testing
- Functional Testing
- Negative Testing
- UI Validation

## Environment

- macOS
- Brave Browser

## Tools

- Browser
- Google Sheets
- Git
- GitHub
- Visual Studio Code

## Results

| Metric           | Result |
| ---------------- | -----: |
| Total Test Cases |      8 |
| Passed           |      8 |
| Failed           |      0 |
| Blocked          |      0 |
| Defects Found    |      0 |
| Pass Rate        |   100% |

## Project Files

- [Test Cases](test-cases.md)
- [Test Summary](test-summary.md)
- [Evidence](evidence/)

## Conclusion

The Login functionality behaved as expected in all executed scenarios.

Valid credentials successfully granted access to the secure area, while invalid or incomplete credentials displayed the appropriate validation messages.

The logout functionality also worked correctly and returned the user to the Login page.
