#!/bin/bash

NUMBER=$1

if [ $NUMBER -gt 20 ]  # -gt , -lt , -ge , -le , -eq , -ne
then
    echo "Given number: $NUMBER is greaterthan 20"
else
    echo "Given number: $NUMBER is lessthan 20"

fi        