#!/bin/bash

# install nodejs14 nodejs 16
nvm install 14 && nvm install 16

# install global dependencies
npm install -g @devcontainers/cli @antfu/ni pnpm yarn vsce yo