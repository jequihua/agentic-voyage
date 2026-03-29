# Framework Scope and Design Decisions

## Overview

This document defines the scope, constraints, and design requirements of the Artifact-First Agentic ML Workflow framework.

It captures:
- the types of projects supported
- expected outputs
- infrastructure assumptions
- collaboration model
- key constraints (cost, reproducibility, scalability)
- design implications for the framework

This serves as the foundation for all subsequent framework design decisions.

---

## 1. Project Types Supported

The framework is designed for data science and machine learning projects in the following domains:

### 1.1 Deep Reinforcement Learning (DRL) for Conservation
- Spatial optimization problems
- Conservation planning models
- Replacement or extension of tools such as Marxan

---

### 1.2 Bioacoustics Pipelines
- Large-scale detection and classification of animals in audio
- Use of models such as BirdNET, Perch, BatDetect2
- Generation of acoustic indices
- Embedding extraction and storage
- Sampling strategies for human validation
- Validation pipelines using tools such as Whombat
- Training local classifiers using embeddings and contextual features

---

### 1.3 Camera Trap Analysis
- Detection and classification in images and videos
- Use of models such as MegaDetector
- Validation pipelines
- Custom classifier training

---

### 1.4 Remote Sensing Pipelines
- Satellite data acquisition (APIs, S3, Google Earth Engine)
- Preprocessing (cloud masking, QC)
- Feature generation (NDVI, composites)
- Model training (classification/regression)
- Accuracy assessment and iteration
- Scalable processing with Docker and cloud workers

---

### 1.5 Ecological Modeling
- Sampling design for field data collection
- Species distribution and occupancy modeling
- Functional diversity analysis
- Habitat connectivity analysis
- Biodiversity baseline creation
- Automated reporting (R, Quarto, officer)

---

## 2. Project Independence Assumption

Each project is:

- **independent**
- initialized from scratch
- contained within its own repository

There is no assumption of shared state across projects.

Reusable components may exist, but are not required.

---

## 3. Typical Outputs (Artifact Layer)

Projects may produce:

- datasets (CSV, parquet, database tables)
- trained models
- experiment logs and evaluation metrics
- visualizations (static or HTML)
- JSON outputs for dashboards or apps
- datasets for human annotation
- reports (markdown, PDF, Quarto)

Artifacts are considered first-class outputs of the system.

---

## 4. Scale of Projects

Projects fall into three categories:

- Small (≈60%): local machine, few GB
- Medium (≈10%): moderate data, batch processing
- Large (≈30%): cloud pipelines, distributed processing, TB-scale data

Large-scale processing may occur once per project but is critical.

---

## 5. Collaboration Model

- Solo work (≈70%)
- Small team (≈30%, ~2–3 collaborators)

The framework must support both:
- lightweight solo workflows
- structured collaboration when needed

---

## 6. Infrastructure Environment

The framework must support:

### Local
- personal machine
- local storage

### HPC
- SLURM-based clusters
- distributed compute environments

### Cloud
- AWS
- Google Cloud

### Tooling
- Docker
- Terraform
- workflow orchestration (Airflow, Prefect, etc.)

### Databases
- PostgreSQL/PostGIS
- SQLite
- QuestDB
- MongoDB

### Storage
- S3 / GCS
- HPC storage (e.g., LUSTRE)

---

## 7. Key Pain Points to Address

The framework must explicitly improve:

### Code Quality
- reduce messy, undocumented code
- enforce best practices
- move toward package-based structure where appropriate

---

### Reproducibility
- ensure full reproducibility of experiments and pipelines
- maintain clear documentation
- enable easy sharing

---

### Testing
- progressively introduce strong unit testing
- move toward robust validation over time

---

### Scalability
- enable seamless scaling from local to cloud
- support large-scale batch processing
- allow consistent execution across environments

---

### Cost Optimization (Critical Requirement)

Cost is a first-class constraint.

The framework must support:
- tracking money spent (compute, storage, APIs)
- comparing infrastructure strategies
- making cost-aware decisions
- documenting cost assumptions and outcomes

Cost becomes a formal artifact of the system.

---

## 8. Programming Languages

- Python (primary)
- R (secondary, especially for reporting and ecological modeling)

The framework must support multi-language workflows.

---

## 9. Infrastructure as a Workspace

Infrastructure is treated as a **first-class workspace**, including:

- Terraform configurations
- Docker setups
- deployment architecture
- local and cloud execution strategies

Even fully local projects may include a minimal infrastructure definition.

Cloud-based systems should be **locally testable whenever possible**.

---

## 10. Application Layer (Conditional)

Applications (e.g., webapps, dashboards) may be:

- part of delivery (simple outputs)
- or a dedicated workspace (complex systems)

The framework must support both cases.

---

## 11. Packaging Philosophy

Reusable components may be turned into:

- small Python packages
- modular codebases

However:
- packaging is **encouraged but not mandatory**
- not all projects require package creation

---

## 12. Experiment Tracking

Preferred tools:
- MLflow (default, open-source)
- Weights & Biases (optional)

Selection criteria:
- cost
- openness
- flexibility

---

## 13. Testing Philosophy

- progressive testing approach
- tests grow with project maturity
- no strict requirement at project start

---

## 14. Review Philosophy

- soft review system
- human retains final decision authority
- AI reviewers provide guidance, not enforcement

---

## 15. Design Implications for Framework

From the above constraints, the framework must:

1. Support **independent project initialization**
2. Be **lightweight by default**, scalable when needed
3. Treat **artifacts as primary outputs**
4. Integrate **infrastructure as a first-class component**
5. Enable **cost tracking and decision logging**
6. Support **multi-language workflows**
7. Allow **optional packaging and application layers**
8. Enable **human-in-the-loop validation workflows**
9. Maintain **clear separation between workspaces**
10. Support **progressive formalization**

---

## Summary

This framework is designed for:

- applied machine learning systems
- scientific workflows
- scalable data processing pipelines
- human-in-the-loop validation systems

It prioritizes:

- clarity
- reproducibility
- cost awareness
- scalability
- flexibility

while avoiding:

- unnecessary complexity
- rigid structure
- over-engineering
