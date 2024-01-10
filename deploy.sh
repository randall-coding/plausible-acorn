#!/bin/bash
acorn build -t ghcr.io/randall-coding/acorn/plausible && \
acorn push ghcr.io/randall-coding/acorn/plausible && \
acorn run -n plausible --memory=1Gi ghcr.io/randall-coding/acorn/plausible
