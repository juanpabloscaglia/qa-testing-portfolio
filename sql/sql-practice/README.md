# SQL Practice for QA | Reproducible Exercises

**Project type:** Educational SQL practice · **Database:** SQLite (local demo)

This project demonstrates SQL queries useful in manual QA: inspecting stored records, filtering results, joining related tables, checking record counts, and investigating possible data-integrity issues.

The original `basic-queries.sql`, `joins.sql`, and `challenges.sql` files contain practice queries. The additional setup and data-quality scripts make the exercises **reproducible** without access to a real application's database.

## Practice data model

Two tables represent a simplified users-and-orders scenario:

| Table | Columns | Purpose |
| --- | --- | --- |
| `qa_users` | `id` (primary key), `name`, `email` | Sample customers |
| `qa_orders` | `order_id` (primary key), `user_id` (foreign key), `product` | Sample customer orders |

**Relationship:** `qa_orders.user_id` references `qa_users.id`.

The setup script inserts **4 fictional users** and **5 fictional orders**. One user intentionally has no orders, allowing you to test a missing-relationship scenario. All data is synthetic; no client or personal records are used.

## Project files

| File | What it demonstrates |
| --- | --- |
| [setup.sql](setup.sql) | Create and populate the two demo tables (SQLite) |
| [basic-queries.sql](basic-queries.sql) | `SELECT`, `WHERE`, `ORDER BY`, `COUNT`, `LIKE`, `IN`, `AND` |
| [joins.sql](joins.sql) | Joining users and orders, filtering, grouping and sorting |
| [challenges.sql](challenges.sql) | Applied exercises combining joins and filters |
| [data-quality-checks.sql](data-quality-checks.sql) | Missing relationships, duplicate emails and order-count reconciliation |

## Run locally on macOS

From the **root of the `qa-testing-portfolio` repository**, run:

```bash
# 1. Build a separate, local demo database outside the Git repository.
sqlite3 "$HOME/Documents/QA/qa_practice_demo.db" < sql/sql-practice/setup.sql

# 2. Run your existing exercise scripts.
sqlite3 -header -column "$HOME/Documents/QA/qa_practice_demo.db" < sql/sql-practice/basic-queries.sql
sqlite3 -header -column "$HOME/Documents/QA/qa_practice_demo.db" < sql/sql-practice/joins.sql
sqlite3 -header -column "$HOME/Documents/QA/qa_practice_demo.db" < sql/sql-practice/challenges.sql

# 3. Perform additional QA-oriented data checks.
sqlite3 -header -column "$HOME/Documents/QA/qa_practice_demo.db" < sql/sql-practice/data-quality-checks.sql
```

> **Important:** `setup.sql` drops and recreates tables called `qa_users` and `qa_orders` in the database you provide. Run it **only against this dedicated practice database**, never a production or shared database. Re-running setup resets this demo data.

## QA-oriented examples

- **Record validation:** count users or inspect an order by ID.
- **Filtering:** identify orders for a selected product.
- **Relationship validation:** join orders to their customer records.
- **Data integrity:** check whether orders reference nonexistent users.
- **Completeness:** identify users with no orders (intentional in the sample, not automatically a defect).
- **Reconciliation:** compare the total orders to the sum of per-user counts.

## Scope and limitations

This repository shows **SQL exercises**, not validation against a live product database. The included data is intentionally small, and query outputs from the fixture do not establish that any real application was tested. The earlier exercise scripts are preserved as originally written; their `GROUP BY name` examples are adequate for these unique-name fixtures, but real datasets should group by stable user identifiers to avoid merging people who share a name.

**Possible next steps:** add explicit assertions for expected results, boundary-value fixtures, and automated database checks after learning a test framework.

[← Back to full QA portfolio](../../README.md)
