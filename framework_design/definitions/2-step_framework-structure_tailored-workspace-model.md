# Framework Structure — Workspace Model

## Overview

This document defines the workspace structure for the Artifact-First Agentic ML Workflow framework.

The structure is designed to:
- support diverse ML/data/infra projects
- remain lightweight for small projects
- scale to complex cloud-based systems
- enforce clear separation of concerns
- enable artifact-driven development

The framework uses a **core + optional workspace model**, and supports two execution modes:

- **Mode A — New Project (from scratch)**
- **Mode B — Existing Repository (legacy enhancement / migration)**

---

## 0. Project Modes

### Mode A — New Project

A project is initialized from scratch:
- new repository
- full workspace structure created
- no legacy constraints

This is the default mode.

---

### Mode B — Existing Repository

The framework is **layered on top of an existing repository**, without restructuring it immediately.

Used for:
- legacy pipeline analysis
- feature development in existing systems
- partial refactoring or migration
- reuse vs rewrite decisions

In this mode:
- the existing repo remains intact
- the framework adds **structure, visibility, and control**
- a dedicated legacy analysis workspace is introduced

---

## 1. Core Workspaces (Always Present)

```text
00_brief/
01_data/
02_analysis/
03_experiments/
04_delivery/
05_governance/
```

### 1.1 00_brief — Problem Definition

Purpose:
Define the project’s objective and constraints.

Contains:

- problem statement
- goals
- success metrics
- constraints (technical, financial, ecological)
- assumptions
- non-goals

Role:
Decision anchor

### 1.2 01_data — Data Understanding

Purpose:
Define and validate all data used.

Contains:

- data sources
- schemas
- provenance
- quality checks
- leakage risks
- dataset splits
- storage structure

Role:
Trust anchor

### 1.3 02_analysis — Exploration

Purpose:
Perform exploratory analysis and generate hypotheses.

Contains:

- notebooks
- visualizations
- summaries
- observations
- hypotheses

Role:
Interpretation layer

### 1.4 03_experiments — Modeling

Purpose:
Run and evaluate experiments.

Contains:

- experiment plans
- configs
- models
- metrics
- run summaries
- comparisons
- error analysis

Role:
Evidence factory

### 1.5 04_delivery — Outputs

Purpose:
Prepare outputs.

Contains:

- reports
- model cards
- summaries
- data products

Role:
Communication layer

### 1.6 05_governance — Control Layer

Purpose:
Track decisions, reviews, and constraints.

Contains:

- decision logs
- review logs
- cost tracking
- assumptions registry
- risks/issues
- change logs

Role:
Audit and control layer

## 2. Optional Workspaces

```text
06_infra/
07_app/
08_pkg/
09_ops/
```

### 2.1 06_infra — Infrastructure

Defines execution environment:

- Docker
- Terraform
- SLURM
- cloud configs
- storage
- cost notes

Notes:

- exists even for local projects (minimal)
- cloud systems should be locally testable
- 2.2 07_app — Applications

Used when building:

- webapps
- dashboards with logic
- APIs
- annotation tools

### 2.3 08_pkg — Packages

Reusable code:

- Python / R packages
- utilities
- pipelines

Optional, not enforced.

### 2.4 09_ops — Operations

Used for:

- monitoring
- scheduled jobs
- maintenance workflows

## 3. Mode B Extension — Legacy Repository Support

When working with an existing repository, add:

```text
90_legacy_review/
```

This workspace is only used in Mode B.

3.1 Purpose of 90_legacy_review

Provide structured understanding of the existing system before modification.

Acts as:

- reverse engineering layer
- risk identification layer
- reuse decision layer

### 3.2 Required Artifacts

#### repo_map.md
- high-level structure of the repository
- key modules and responsibilities
- data flow overview
- reuse_candidate_log.md
- list of reusable components
- scripts, modules, pipelines
- confidence level of reuse
- legacy_risks.md
- brittle code
- unclear logic
- undocumented behavior
- technical debt
- potential failure points

#### feature_scope.md
- what part of the repo is being modified
- boundaries of change
- dependencies
- migration_decision_log.md
- reuse vs rewrite decisions
- rationale
- trade-offs

### 3.3 Optional Artifacts

- dependency graph
- execution flow diagrams
- test coverage assessment
- performance bottlenecks

### 3.4 Workflow in Mode B

1. Analyze repository structure
2. Build repo_map.md
3. Identify reusable components
4. Log risks and unknowns
5. Define feature scope
6. Decide reuse vs rewrite
7. Only then begin development

### 3.5 Key Rule for Mode B

No major modification of legacy code should happen before the system is understood and documented.

### 3.6 Interaction with Other Workspaces

- 02_analysis → supports exploration of repo behavior
- 05_governance → records decisions
- 03_experiments → used for testing replacement strategies

## 4. Design Principles

### Modularity

Each workspace has a single responsibility.

### Progressive Complexity

Projects start simple and grow.

### Context Isolation

Each workspace defines its own context.

### Artifact Orientation

All progress is captured as artifacts.

### Scalability

Supports local, HPC, and cloud.

### Flexibility

Optional workspaces added as needed.

### Safe Legacy Integration

Existing systems are analyzed before modification.

## 5. Project Initialization

### Mode A

```text
00_brief/
01_data/
02_analysis/
03_experiments/
04_delivery/
05_governance/
```

### Mode B

```text
00_brief/
01_data/
02_analysis/
03_experiments/
04_delivery/
05_governance/
90_legacy_review/
```
Optional workspaces added as needed. See examples below.

## 6. Example Workspace Configurations

### Minimal Local Project

```text
00_brief/
01_data/
02_analysis/
03_experiments/
04_delivery/
05_governance/
```

### ML + Infra Project

```text
00_brief/
01_data/
02_analysis/
03_experiments/
04_delivery/
05_governance/
06_infra/
```

### Full System (ML + Infra + App)

```text
00_brief/
01_data/
02_analysis/
03_experiments/
04_delivery/
05_governance/
06_infra/
07_app/
08_pkg/
09_ops/
```

## Summary

This structure:

supports both new and legacy projects
enables safe modification of existing systems
maintains clarity and traceability
integrates ML, data, and infrastructure workflows
remains lightweight and scalable