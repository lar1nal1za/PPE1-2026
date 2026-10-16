#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage : bash compte_par_type.sh ANNEE TYPE" >&2
    exit 1
fi

grep -h "$2" /Users/macbook/Desktop/PPE/Exercice1/ann/"$1"/*.ann | wc -l