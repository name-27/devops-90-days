#!/bin/bash

NUMBER=1

while [ "$NUMBER" -le 5 ]
do
    echo "Current number: $NUMBER"
    NUMBER=$((NUMBER + 1))
done

echo "Loop completed!"
