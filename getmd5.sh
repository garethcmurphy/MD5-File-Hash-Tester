#!/usr/bin/env bash


declare -a files=("f1.txt" "f2.txt")
path1="./input/"
path2="./output/"

for file in ${files[@]}; do
md5 $path1$file
md5 $path2$file
done
