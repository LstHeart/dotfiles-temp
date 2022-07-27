#!/bin/bash

# executes inside the container after onCreateCommand(It will execute at least once)
echo `date +"[%Y/%m/%d %H:%M:%S]"` 'updateContentCommand has been executed...'
echo 'current-dir:' `pwd`