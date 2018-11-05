#!/bin/bash

touch ./kat3/spis
for file in $1/*
do
	if [ -s $file ]
	then
	echo $file
	else
	echo $file >> ./kat3/spis
	rm $file
	fi
done
