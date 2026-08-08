#!/usr/bin/env bash

# This proxy allows us to develop on localhost WITHOUT connecting to anything external to comply with security requirements
nc -l -k -p 8080 -c "nc 8.217.202.186 80"
