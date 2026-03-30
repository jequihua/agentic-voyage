#!/bin/bash
bash init_infra.sh
mkdir -p 07_app 08_pkg 09_ops
touch 07_app/{CONTEXT.md,app_description.md}
touch 09_ops/{CONTEXT.md,monitoring.md}
