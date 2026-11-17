#!/bin/bash
set -e

# Docker entrypoint script for AutoSARM Service

echo "=========================================="
echo "AutoSARM Service"
echo "=========================================="
echo "Starting at: $(date)"
echo ""

# Initialize conda
source /opt/conda/etc/profile.d/conda.sh 2>/dev/null || \
eval "$(micromamba shell hook --shell bash)"
micromamba activate base 2>/dev/null || conda activate base 2>/dev/null || true

echo "Using Python: $(which python)"
echo "Python version: $(python --version)"
echo ""

# Argo supplies the explicit scientific stage command.
exec "$@"
