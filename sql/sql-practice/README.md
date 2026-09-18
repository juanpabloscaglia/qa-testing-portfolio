# SQL Practice for QA

This section contains SQL exercises focused on database validation and data analysis for QA testing.

## Topics Practiced

- SELECT
- WHERE
- ORDER BY
- COUNT
- LIKE
- IN
- AND / OR
- JOIN
- Filtering results
- Sorting data
- Combining related tables

## Practice Tables

The exercises use two sample tables:

### qa_users

- id
- name
- email

### qa_orders

- order_id
- user_id
- product

The relationship between both tables is:

`qa_users.id = qa_orders.user_id`

## QA Objective

SQL is useful in QA to:

- Validate application data
- Verify database records
- Compare frontend and backend information
- Investigate defects
- Check data integrity
- Validate relationships between tables

## Files

- [Basic Queries](basic-queries.sql)
- [JOIN Practice](joins.sql)
- [SQL Challenges](challenges.sql)
