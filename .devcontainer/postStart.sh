#!/bin/bash

# A command to run each time the container is successfully started
echo "postStartCommand has been executed!"

# install custom npm dependencies
# npm install -g @angular/cli @angular-devkit/schematics-cli