#!/bin/sh -l
docker build .
echo "Hello $1 i greet you because $2 "
time=$(date)
echo "time=$time" >> $GITHUB_OUTPUT