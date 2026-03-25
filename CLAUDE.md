# learn-postgresql

A learning project for understanding PostgreSQL from scratch — database design, security, and APIs.

## Goal
Work through database concepts step by step:
1. Schema design — tables, data types, constraints, relationships
2. Querying — SELECT, JOIN, GROUP BY, indexes
3. Security — roles, users, permissions
4. APIs — connecting PostgreSQL to a Python API (FastAPI)

## Stack
- PostgreSQL (local or remote)
- Python 3.14
- psycopg / SQLAlchemy for DB connections
- FastAPI for the API layer (when we get there)

## Key Files
- `schema.sql` — table definitions (people, orgs, repos, relationships)
- `tutorial.md` — main learning material from the original repo
- `query.sql` — example queries

## Conventions
- Write SQL in `.sql` files, not inline strings where possible
- Always use parameterised queries (never string-format SQL)
- Keep notes and learnings in a `notes/` folder as we go

## Local Database (Docker)
- **Container:** `learn-postgres`
- **Host:** localhost
- **Port:** 5432
- **User:** chris
- **Password:** chris
- **Database:** learn_db
- **Start:** `docker start learn-postgres`
- **Stop:** `docker stop learn-postgres`
- **Connect:** `docker exec -it learn-postgres psql -U chris -d learn_db`

## Running locally
- Python: `C:/Users/chris/AppData/Local/Python/bin/python.exe`
- Never commit `.env` files
- Never touch the vejle-parking production server (165.22.73.33) from this project
