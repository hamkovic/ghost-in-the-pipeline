#!/usr/bin/env bash
set -euo pipefail
# prefer php if present else python via make
make -f build/Makefile
