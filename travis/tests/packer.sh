#!/bin/bash
cd ..
for f in packer/*.json; do
    echo "checking $f"
    if [[ $f == *"var"*".json" ]]; then
        echo "its variable file: $f"
    else sudo packer validate -var-file=packer/variables.json $f
    fi
done
