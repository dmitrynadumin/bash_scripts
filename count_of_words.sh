#!/bin/bash

for var in "$@"
do
  if [[ $(file -b $var)] == *"ASCII text"* ]];then
      wc -w $var
  else
      echo "$var isn't a text file"
  fi
done
