# Test Summary Report

## Project

Broken Images & Status Codes Testing

## Test Objective

Validate image rendering and verify HTTP status code behavior on The Internet practice application.

## Environment

- Operating System: macOS
- Browser: Brave
- Testing Type: Manual Functional / Exploratory Testing
- Execution Date: 30/07/2026

## Execution Summary

| Status           | Count |
| ---------------- | ----: |
| Total Test Cases |     5 |
| Passed           |     4 |
| Failed           |     1 |
| Bugs Found       |     1 |

**Pass Rate:** 80%

## Areas Tested

- Image rendering
- HTTP 200
- HTTP 301
- HTTP 404
- HTTP 500

## Defects

One defect was identified:

**BUG-001 – Two images are broken on the Broken Images page**

## Evidence

Evidence captured during execution:

`TC-001_broken_images_fail.png`

## Final Result

The HTTP Status Codes functionality passed all executed test cases.

The Broken Images test failed because two images did not load correctly. The issue was documented as BUG-001.
