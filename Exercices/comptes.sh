#!/bin/bash
echo "Location 2016 :"
grep -h "Location" /Users/macbook/Desktop/PPE/Exercice1/ann/2016/*.ann | wc -l
echo "Location 2017 :"
grep -h "Location" /Users/macbook/Desktop/PPE/Exercice1/ann/2017/*.ann | wc -l
echo "Location 2018 :"
grep -h "Location" /Users/macbook/Desktop/PPE/Exercice1/ann/2018/*.ann | wc -l
