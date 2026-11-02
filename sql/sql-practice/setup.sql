-- SQLite demo data for QA practice.
-- WARNING: Drops and recreates qa_orders and qa_users in the selected database.
-- Execute ONLY against a dedicated local practice database.

PRAGMA foreign_keys = ON;

BEGIN TRANSACTION;
DROP TABLE IF EXISTS qa_orders;
DROP TABLE IF EXISTS qa_users;

CREATE TABLE qa_users (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE
);

CREATE TABLE qa_orders (
    order_id INTEGER PRIMARY KEY,
    user_id INTEGER NOT NULL,
    product TEXT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES qa_users(id)
);

-- Synthetic users; Elena intentionally has no orders.
INSERT INTO qa_users (id, name, email) VALUES
    (1, 'Maria', 'maria@example.test'),
    (2, 'Juan', 'juan@example.test'),
    (3, 'Elena', 'elena@example.test'),
    (4, 'Lucia', 'lucia@example.test');

INSERT INTO qa_orders (order_id, user_id, product) VALUES
    (100, 1, 'Mouse'),
    (101, 2, 'Keyboard'),
    (102, 1, 'Mouse'),
    (103, 4, 'Monitor'),
    (104, 2, 'Mouse');

COMMIT;
