#!/bin/bash

find $PWD -maxdepth 3 -name "*.jpg" -or -name "*.gif" -type f | tail -n5 | tr '/' '\\'
