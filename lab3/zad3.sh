#!/bin/bash

find $PWD -maxdepth 3 -size -64c -name "*.jpg" -or -name "*.gif" -exec stat -c%y {} \;  | tail -n -5 | tr '/' '\\' > logfile.txt
