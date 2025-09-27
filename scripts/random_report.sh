#!/usr/bin/env bash
set -euo pipefail

# Emit a pretend report with random values.
project=${1:-sample}
seed=${2:-$RANDOM}

hash=$(printf '%s:%s' "$project" "$seed" | shasum | cut -c1-12)
metric=$((seed % 100 + 1))

printf 'project=%s\nseed=%s\nhash=%s\nmetric=%s\n' "$project" "$seed" "$hash" "$metric"
