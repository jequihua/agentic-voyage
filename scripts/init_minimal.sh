#!/bin/bash
mkdir -p 00_brief 01_data 02_analysis 03_experiments 04_delivery 05_governance

touch 00_brief/{CONTEXT.md,problem_statement.md,success_metrics.md}
touch 01_data/{CONTEXT.md,data_sources.md}
touch 02_analysis/{CONTEXT.md,analysis_summary.md}
touch 03_experiments/{CONTEXT.md,experiment_plan.md,run_summary.md}
touch 04_delivery/{CONTEXT.md,final_summary.md}
touch 05_governance/{CONTEXT.md,decision_log.md,cost_log.md}
