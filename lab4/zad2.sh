#!/bin/bash

if [ -d "$1" ] ; then
	find $1/* -type f -name '*c';
else
	echo "Zły argument";
fi