# Query plan guide

## Review checklist

- Compare estimated rows with actual rows.
- Look for sequential scans on high-cardinality filters.
- Check sort cost and whether an index can satisfy ordering.
- Confirm buffer reads drop after optimization.
- Validate the optimized query against production-like data volume.

## Before and after narrative

Document the baseline latency, the observed plan, the chosen index or rewrite, and the measured result. Avoid claiming an optimization until the plan and latency both improve under representative data.
