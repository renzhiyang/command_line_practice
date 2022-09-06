#!/bin/zsh

for ((count=1;;count++))
do
    ./bugger.sh 1>> out.log 2>> error.log
    if [[ $? -ne 0 ]]; then
        echo "failed after $count times"
        # cat out.log
        break
    fi
    ((count++))
done
