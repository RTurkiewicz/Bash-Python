#!/bin/bash

awk -F , 'NR == 1{i = NF} NF < i{print}' tmp.csv
