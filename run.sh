#!/usr/bin/env bash


python3 setup.py || true

# Always clean up after the build to ensure that we don't leave any secrest laying around
./cleanup
