EXPLAIN (ANALYZE, BUFFERS)
SELECT id, severity, status, updated_at
FROM support_cases
WHERE customer_id = 'customer-001'
  AND status = 'open'
ORDER BY updated_at DESC
LIMIT 25;
