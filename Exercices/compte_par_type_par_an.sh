#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage : bash compte_par_type_par_an.sh TYPE" >&2
    exit 1
fi

echo "$1 2016 :"
bash compte_par_type.sh 2016 "$1"

echo "$1 2017 :"
bash compte_par_type.sh 2017 "$1"

echo "$1 2018 :"
bash compte_par_type.sh 2018 "$1"