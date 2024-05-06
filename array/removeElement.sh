#!/bin/bash

declare -a fruits
fruits[10]="Apple"
fruits[20]="Orange"
fruits[30]="Grape"
fruits[40]="Mango"

echo "Element before removal:" ${fruits[@]}
unset fruits[10]
unset fruits[30]
echo "Element after removal:" ${fruits[@]}
