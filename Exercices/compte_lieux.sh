#!/bin/bash

grep -h "Location" /Users/macbook/Desktop/PPE/Exercice1/ann/$1/$1_$2_*.ann | cut -f 3 | sort | uniq -c | sort -nr | head -n "$3"
