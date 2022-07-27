#!/bin/bash

# A command to run each time the container is successfully started
echo `date +"[%Y/%m/%d %H:%M:%S]"` 'postStartCommand has been executed...'
echo 'current-dir:' `pwd`
# install custom npm dependencies
# npm install -g @angular/cli @angular-devkit/schematics-cli