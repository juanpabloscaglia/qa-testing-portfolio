# Broken Images & Status Codes Testing

Manual functional and exploratory testing project performed on **The Internet** practice website.

## Application

The Internet

### Modules Tested

- Broken Images
- Status Codes

## URLs

Broken Images:

https://the-internet.herokuapp.com/broken_images

Status Codes:

https://the-internet.herokuapp.com/status_codes

## Objective

Validate image rendering and verify that the application correctly returns and displays information for different HTTP status codes.

## Scope

The following scenarios were tested:

- Broken image detection
- HTTP 200
- HTTP 301
- HTTP 404
- HTTP 500

## Testing Types

- Manual Testing
- Functional Testing
- Exploratory Testing
- Negative Testing

## Environment

- macOS
- Brave Browser

## Test Results

| Metric           | Result |
| ---------------- | -----: |
| Total Test Cases |      5 |
| Passed           |      4 |
| Failed           |      1 |
| Bugs Found       |      1 |
| Pass Rate        |    80% |

## Defect Found

**BUG-001 – Two images are broken on the Broken Images page**

Severity: Medium  
Priority: Medium  
Status: Open

## Project Files

- [Test Cases](test-cases.md)
- [Bug Report](bug-report.md)
- [Test Summary](test-summary.md)
- [Evidence](evidence/)

## Conclusion

The Status Codes functionality behaved as expected for HTTP codes 200, 301, 404 and 500.

During Broken Images testing, two images failed to load correctly and were documented as BUG-001.
