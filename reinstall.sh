#!/bin/bash

# Find and remove all node_modules directories
find . -name "node_modules" -type d -prune -exec rm -rf '{}' +

# Reinstall dependencies
pnpm install