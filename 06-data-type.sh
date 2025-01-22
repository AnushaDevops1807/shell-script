#!/bin/bash

NUMBER1=$1
NUMBER2=$2

TIMESTAMP=$(date)
echo "Script executed at: $TIMESTAMP"
SUM=$(($NUMBER1 + $NUMBER2))

echo "SUM of $NUMBER1 and $NUMBER2 is: $SUM"


# (()) or expr have to use for arthimatic operations like sum, subtract, multiplication,division and modulus(finding remainder)

# Logical operators and (&&),or(||), negate(!)
# (&&)---> This operator is used to check if both conditions are true
# (!!)---> This operator is used to check if atleast one condition is true
# (!) --->This operator is used to negate a condition i.e., It checks if a condition is not true.