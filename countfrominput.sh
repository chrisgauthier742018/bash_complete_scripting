#!/usr/bin/bash


read -p "How many files do you want: " numfiles
read -p "What is your filename: " filename

for i in $(seq 1 $numfiles)
do
	touch $filename.$i

done
