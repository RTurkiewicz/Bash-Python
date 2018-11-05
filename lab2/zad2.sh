#!/bin/bash

./zad1.sh

link=$(readlink -f lab2/a/b/c/plik1)

for file in lab2/e/*
do
	if [[ -L $file && $link == $(readlink -f $file) ]];
	then
		echo $(readlink -f $file) = $link
	fi
done

mkdir lab2/f
cp -d lab2/e/link_plikB_bez lab2/f/
cp lab2/e/link_plikA lab2/f/