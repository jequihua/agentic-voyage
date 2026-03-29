# Step 3 — Exact Files and Templates (Rich Version)

## Overview

This document defines the exact file structure and detailed templates for each workspace in the Artifact-First Agentic ML Workflow framework.

It includes:
- mandatory files
- recommended files
- optional files
- full artifact templates
- review system
- naming conventions

This is the **fully expanded operational specification**.

---

## Global Rules

### Rule 1 — Every workspace has a CONTEXT.md

Each workspace must include:

CONTEXT.md

This file defines:
- purpose of the workspace
- expected outputs
- evaluation criteria
- key files
- definition of done

---

### Rule 2 — Every important action updates an artifact

Examples:
- experiment → update run_summary.md
- decision → update decision_log.md
- cost → update cost_log.md

---

### Rule 3 — Prefer markdown over notebooks for summaries

- notebooks → execution
- markdown → communication and memory

---

### Rule 4 — Use standardized templates

Templates:
- reduce ambiguity
- improve review quality
- enable comparison across iterations

---

# 00_brief

## Files

Mandatory:
- CONTEXT.md
- problem_statement.md
- success_metrics.md

Recommended:
- constraints.md
- assumptions.md
- non_goals.md
- stakeholder_notes.md
- cost_constraints.md

---

## Template — problem_statement.md

# Problem Statement

## Objective
Clear and concise description of the problem.

## Context
Why this problem matters (scientific/business context).

## Scope
What is included and excluded.

## Expected Outcome
What success looks like in practical terms.

---

## Template — success_metrics.md

# Success Metrics

## Primary Metrics
- Metric:
- Target:

## Secondary Metrics
- Metric:
- Target:

## Evaluation Method
How metrics are computed and validated.

---

# 01_data

## Files

Mandatory:
- CONTEXT.md
- data_sources.md

Recommended:
- schema.md
- data_quality.md
- leakage_analysis.md
- splits.md
- storage_layout.md

---

## Template — data_sources.md

# Data Sources

## Source Name
- Location:
- Format:
- Size:
- Access method:

## Provenance
Where the data comes from.

## Notes
- Known issues:
- Licensing:

---

# 02_analysis

## Files

Mandatory:
- CONTEXT.md
- analysis_summary.md

Recommended:
- hypotheses.md
- findings.md
- notebooks/
- figures/

---

## Template — analysis_summary.md

# Analysis Summary

## Key Findings
- Finding:

## Observations
- Pattern:
- Anomaly:

## Hypotheses
- Hypothesis:

## Supporting Evidence
- Plots:
- Tables:

## Next Steps
- Action:

---

# 03_experiments

## Files

Mandatory:
- CONTEXT.md
- experiment_plan.md
- run_summary.md

Recommended:
- experiments/
- configs/
- results/
- error_analysis.md

---

## Template — experiment_plan.md

# Experiment Plan

## Objective
What is being tested.

## Hypothesis
Expected outcome.

## Method
Model / algorithm / pipeline.

## Data
Dataset and split.

## Metrics
Evaluation criteria.

## Risks
Potential failure points.

## Expected Outcome

---

## Template — run_summary.md

# Run Summary

## Configuration
Model, parameters, data version.

## Results
Metrics and outputs.

## Comparison
Baseline vs new results.

## Observations
What changed and why.

## Decision
Keep / discard / iterate.

---

## Template — error_analysis.md

# Error Analysis

## Failure Cases
- Case:

## Patterns
- Observed patterns:

## Root Causes
- Possible causes:

## Impact
How errors affect results.

## Next Actions
- Action:

---

# 04_delivery

## Files

Mandatory:
- CONTEXT.md
- final_summary.md

Recommended:
- model_card.md
- report.md
- outputs/

---

## Template — final_summary.md

# Final Summary

## What was done

## Key Results

## Limitations

## Risks

## Recommendations

---

# 05_governance

## Files

Mandatory:
- CONTEXT.md
- decision_log.md
- cost_log.md

Recommended:
- review_log.md
- assumptions_log.md
- risks.md
- reviews/

---

## Template — decision_log.md

# Decision Log

## Decision

## Context

## Options Considered

## Chosen Option

## Rationale

## Impact

## Date

---

## Template — cost_log.md

# Cost Log

## Date

## Activity

## Resource Used

## Cost Estimate

## Actual Cost

## Notes

---

# Review System

Location:
05_governance/reviews/

Files:
- review_gpt.md
- review_claude.md
- review_synthesis.md

---

## Template — review_synthesis.md

# Review Synthesis

## Agreed Issues
- Issue:

## Disagreements
- Topic:

## Actionable Fixes
- Fix:

## Deferred Items
- Item:

---

# 06_infra

## Files

Mandatory:
- CONTEXT.md
- architecture.md

Recommended:
- docker/
- terraform/
- deployment.md
- local_setup.md
- cost_estimates.md

---

# 07_app

## Files

- CONTEXT.md
- app_description.md
- backend/
- frontend/

---

# 08_pkg

## Files

- package_name/
    - __init__.py
    - core/
    - utils/
- pyproject.toml

---

# 09_ops

## Files

- CONTEXT.md
- monitoring.md
- scheduled_jobs.md
- runbooks.md

---

# 90_legacy_review

## Files

Mandatory:
- repo_map.md
- reuse_candidate_log.md
- legacy_risks.md
- feature_scope.md
- migration_decision_log.md

---

## Template — repo_map.md

# Repository Map

## Structure
High-level folder structure.

## Key Modules
- Module:
- Responsibility:

## Data Flow
Description of pipeline/data movement.

## Dependencies
Key internal and external dependencies.

---

# Naming Conventions

- snake_case for all files
- explicit names preferred
- avoid generic names like notes.md

Preferred examples:
- run_summary.md
- decision_log.md
- error_analysis.md

---

# Summary

This structure provides:
- clear organization
- reproducibility
- auditability
- scalability
- compatibility with ML, data, and infrastructure workflows
