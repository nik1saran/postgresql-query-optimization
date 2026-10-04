# PostgreSQL Query Optimization

A hands-on package for diagnosing slow PostgreSQL queries, reading execution plans, applying indexes, and validating latency improvements.

## Scenario

A production query regressed from interactive latency to user-visible delay. This repository shows the investigation path from baseline measurement to plan analysis, index design, query rewrite, and validation.

## Repository map

| Path | Purpose |
| --- | --- |
| `sql/001_schema.sql` | Example tables and indexes. |
| `sql/002_queries.sql` | Baseline and optimized query examples. |
| `docs/query-plan-guide.md` | How to inspect and explain the optimization. |
| `docker-compose.yml` | Local PostgreSQL environment. |

## Quick start

```bash
docker compose up -d
psql postgresql://postgres:postgres@localhost:5432/optimization_lab -f sql/001_schema.sql
psql postgresql://postgres:postgres@localhost:5432/optimization_lab -f sql/002_queries.sql
```
