#!/bin/sh -l

echo "Hello $1 i greet you because $2 "
time=$(date)
echo "time=$time" >> $GITHUB_OUTPUT