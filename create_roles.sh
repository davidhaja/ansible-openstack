#!/bin/bash

if [ $# -gt 0 ]; then
    subfolders="files templates tasks handlers vars defaults meta"
    for role in "$@"
    do
        for subfolder in ${subfolders}
        do
            mkdir -p "roles/${role}/${subfolder}/"
            touch "roles/${role}/${subfolder}/main.yml"
            echo "roles/${role}/${subfolder}/main.yml created"
        done
    done
else
    echo "Usage: ./init.sh <role name 1> <role name 2> ..."
fi
