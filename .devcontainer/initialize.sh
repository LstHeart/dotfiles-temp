#!/bin/bash

echo `date +"[%Y/%m/%d %H:%M:%S]"` 'initializeCommand has been executed...'
echo 'current-dir:' `pwd`

sudo chmod -R 755 ./.devcontainer/ && sudo chmod -R 755 ./scripts/