-- ============================================================
-- 01 - First Tables
-- A simple library database to learn schema design
-- ============================================================

-- Authors table
CREATE TABLE authors (
    id      SERIAL PRIMARY KEY,
    name    VARCHAR(100) NOT NULL,
    country VARCHAR(100)
);

-- Books table — links to authors via foreign key
CREATE TABLE books (
    id            SERIAL PRIMARY KEY,
    title         VARCHAR(255) NOT NULL,
    published_year INT,
    author_id     INT REFERENCES authors(id)
);
