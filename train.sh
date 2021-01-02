#!/usr/bin/env bash

dvc pull data/wine_quality.csv
dvc repro

echo "## Model metrics" > report.md
cat metrics/metrics.json >> report.md
cat report.md

# git fetch --prune          
echo "# Metrics\n" > report.md
dvc metrics diff --show-md master >> report.md
