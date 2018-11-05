#!/bin/bash

cd $1
var=0
plikk=$(ls -S)
for file in $plikk
do
	echo $file
	var=`expr $var + 1`
	mv $file "$file.$var"
done
