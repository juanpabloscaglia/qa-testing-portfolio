# Broken Images & Status Codes | Recorded Manual Test Cases

- **Application:** [The Internet](https://the-internet.herokuapp.com/)
- **Recorded execution date:** 2026-07-30
- **Environment:** macOS · Brave
- **Nature of work:** Portfolio practice; results below reproduce the existing test record and have **not** been re-executed for this documentation update.

## TC-001 - Broken image rendering

- **Page:** <https://the-internet.herokuapp.com/broken_images>
- **Type:** Manual visual / functional check

**Steps**
1. Open the Broken Images page.
2. Wait for the page to finish loading.
3. Check the displayed images.

- **Expected:** All intended images render correctly.
- **Recorded actual:** Only one image rendered correctly; the first two were broken.
- **Recorded result:** **FAIL**
- **Evidence:** [Screenshot](evidence/TC-001_broken_images_fail.png)
- **Related finding:** [BUG-001](bug-report.md)

**Context:** The site intentionally offers this defective training scenario. A failed expectation is part of the exercise, not an unexpected customer-facing production incident.

---

## TC-002 - HTTP 200 demonstration

- **Page:** <https://the-internet.herokuapp.com/status_codes>
**Steps**
1. Open the Status Codes page.
2. Select the link labeled **200**.
3. Review the displayed status-code message.

- **Expected:** The exercise displays the information for status code 200.
- **Recorded actual:** The page showed `This page returned a 200 status code.`
- **Recorded result:** **PASS**
- **Evidence:** No separate screenshot documented.

---

## TC-003 - HTTP 301 demonstration

- **Page:** <https://the-internet.herokuapp.com/status_codes>
**Steps**
1. Open the Status Codes page.
2. Select the link labeled **301**.
3. Observe the resulting page and message.

- **Expected:** The exercise demonstrates the status code 301 scenario.
- **Recorded actual:** The page displayed information corresponding to the 301 demonstration.
- **Recorded result:** **PASS**
- **Evidence:** No separate screenshot or redirect trace documented.

---

## TC-004 - HTTP 404 demonstration

- **Page:** <https://the-internet.herokuapp.com/status_codes>
**Steps**
1. Open the Status Codes page.
2. Select the link labeled **404**.
3. Observe the resulting page and message.

- **Expected:** The exercise demonstrates the status code 404 scenario.
- **Recorded actual:** The page displayed information corresponding to the 404 demonstration.
- **Recorded result:** **PASS**
- **Evidence:** No separate screenshot documented.

---

## TC-005 - HTTP 500 demonstration

- **Page:** <https://the-internet.herokuapp.com/status_codes>
**Steps**
1. Open the Status Codes page.
2. Select the link labeled **500**.
3. Observe the resulting page and message.

- **Expected:** The exercise demonstrates the status code 500 scenario.
- **Recorded actual:** The page displayed information corresponding to the 500 demonstration.
- **Recorded result:** **PASS**
- **Evidence:** No separate screenshot documented.

## Scope clarification

The status-code tests in this historical record describe the **page behavior recorded by the tester**. They do not include independent captures from DevTools → Network verifying the actual HTTP status, redirect chain or response headers. Such checks would be useful additions to a future run, rather than retroactive claims about this one.

[← Back to project overview](README.md)
