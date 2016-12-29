#!/bin/bash

if [ $# -gt 0 ]; then
    ARRAY=("files" "templates" "tasks" "handlers" "vars" "defaults" "meta")
    for role in "$@"
    do
        for a in ${ARRAY[@]}
        do
            mkdir -p roles/$role/$a
            touch roles/$role/$a/main.yml
            echo "roles/$role/$a/main.yml created"
        done
    done
else
    echo "Usage: ./init.sh <role name 1> <role name 2> ..."
fi
