#!/bin/zsh

n=$(( RANDOM % 100 ))
>&1 echo "$n"

if [[ n -eq 42 ]]; then
    >&1 echo "Something went wrong"
    >&2 echo "The error was using magic numbers"
    exit 1
fi

echo "Everything went according to plan"