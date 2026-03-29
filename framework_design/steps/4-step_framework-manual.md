# Step 4 — Project Initialization & Execution Manual

## Overview
This manual defines the operational workflow for initializing and executing projects under the Artifact-First Agentic ML Workflow framework.

---

## Modes

### Mode A — New Project
- Minimal Local Project
- ML + Infra Project
- Full System (ML + Infra + App)
- Package-Oriented Project

### Mode B — Existing Repository
- Feature Development
- Legacy Re-implementation

---

## Phase 0 — Choose Mode
Decide project type and required workspaces.

---

## Phase 1 — Initialize Structure

### Core Workspaces

```text
00_brief/
01_data/
02_analysis/
03_experiments/
04_delivery/
05_governance/
```

### Optional

```text
06_infra/
07_app/
08_pkg/
09_ops/
90_legacy_review/ (Mode B only)
```

---

## Phase 2 — Define Problem
Populate:
- problem_statement.md
- success_metrics.md

---

## Phase 3 — Data
Populate:
- data_sources.md
- schema.md

---

## Phase 4 — Analysis
Populate:
- analysis_summary.md

---

## Phase 5 — Experiments
Populate:
- experiment_plan.md
- run_summary.md

---

## Phase 6 — Delivery
Populate:
- final_summary.md

---

## Phase 7 — Governance (continuous)
Update:
- decision_log.md
- cost_log.md

---

## Mode B Additional Steps
- Create 90_legacy_review/
- Populate:
  - repo_map.md
  - reuse_candidate_log.md
  - legacy_risks.md
  - feature_scope.md
  - migration_decision_log.md

---

## Review Workflow
1. Claude develops
2. GPT reviews
3. Claude reviews feedback
4. Human decides
