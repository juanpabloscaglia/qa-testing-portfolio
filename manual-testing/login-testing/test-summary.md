# Login Testing | Execution Summary

## Context

- **Application:** [The Internet — Form Authentication](https://the-internet.herokuapp.com/login)
- **Execution environment recorded:** macOS / Brave browser
- **Testing approach:** Manual functional testing, positive and negative scenarios
- **Execution date:** Not recorded in the original project documentation
- **Project type:** Educational practice

## Historical results

| Metric | Recorded outcome |
| --- | ---: |
| Test cases | 8 |
| PASS | 8 |
| FAIL | 0 |
| BLOCKED | 0 |
| Defects logged in this execution | 0 |
| Saved screenshots | 4 |

The recorded pass rate is **8/8 (100%) for this execution only**. This does not establish exhaustive coverage or present-day behavior.

## Evidence and traceability

| TC-001 | Valid login | PASS | [Screenshot](evidence/TC-001_valid_login_pass.png) |
| TC-002 | Invalid username | PASS | [Screenshot](evidence/TC-002_invalid_username_error_pass.png) |
| TC-003 | Invalid password | PASS | [Screenshot](evidence/TC-003_invalid_password_error_pass.png) |
| TC-004 | Empty username | PASS | Not captured |
| TC-005 | Empty password | PASS | Not captured |
| TC-006 | Both credentials empty | PASS | Not captured |
| TC-007 | Logout | PASS | [Screenshot](evidence/TC-007_logout_pass.png) |
| TC-008 | Password case sensitivity | PASS | Not captured |

## Conclusion

The documented scenarios covered valid login, invalid and missing credentials, case-sensitive password handling, and logout. All eight original cases were marked PASS. No defects were recorded in that run.

## Limitations

Only four cases have corresponding screenshots. No additional test execution, network traces, browser compatibility checks, or security testing were performed as part of this documentation update.

[Detailed test cases](test-cases.md) · [Project overview](README.md)
