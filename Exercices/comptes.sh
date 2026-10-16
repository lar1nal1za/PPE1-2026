#!/bin/bash

for annee in 2016 2017 2018
do
    echo "Location $annee :"
    grep -h "Location" /Users/macbook/Desktop/PPE/Exercice1/ann/"$annee"/*.ann | wc -l
done