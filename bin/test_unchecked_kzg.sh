#!/bin/bash

# Configuration variables
THREADS=1
# THREADS=16


TEST_FILE="univar_opt_bench_multhr"

REPEAT=1
MIN_SIZE=8
MAX_SIZE=8

CMDS1="cargo run --release --bin univar_opt_bench_multhr -- --repeat=1 --min-size=8 --max-size=12 --prepare-threads=64 --run-threads=8 --poly-commit-scheme=msm_unchecked_kzg --batch-opening-threads=1 | tee -a output_log/new.log "

CMDS1="cargo run --release --bin univar_opt_bench_multhr -- --repeat=1 --min-size=8 --max-size=12 --prepare-threads=64 --run-threads=8 --poly-commit-scheme=msm_unchecked_kzg --batch-opening-threads=8 | tee -a output_log/new1.log "


echo "Running: $CMDS1"
eval "$CMDS1"