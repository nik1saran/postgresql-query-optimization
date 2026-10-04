CREATE TABLE IF NOT EXISTS support_cases (
  id BIGSERIAL PRIMARY KEY,
  customer_id TEXT NOT NULL,
  severity TEXT NOT NULL,
  status TEXT NOT NULL,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE INDEX IF NOT EXISTS idx_support_cases_customer_status_updated
ON support_cases (customer_id, status, updated_at DESC);
