#!/bin/bash
#
# this script demonstrates doing arithmetic

# Task 1: Remove the assignments of numbers to the first and second number variables. Use one or more read commands to get 3 numbers from the user.
# Task 2: Change the output to only show:
#    the sum of the 3 numbers with a label
#    the product of the 3 numbers with a label

firstnum=5
secondnum=2
sum=$((firstnum + secondnum))
dividend=$((firstnum / secondnum))
fpdividend=$(awk "BEGIN{printf \"%.2f\", $firstnum/$secondnum}")

cat <<EOF
$firstnum plus $secondnum is $sum
$firstnum divided by $secondnum is $dividend
  - More precisely, it is $fpdividend
EOF

Number1=6
Number2=4
subtraction=$((Number1 - Number2))
dividend=$((Number1 / Number2))
modulos=$((Number1 % Number2))
fpdividend=$(awk "BEGIN{printf \"%.4f\", $Number1/$Number2}")

cat <<EOF
$Number1 subtracted by $Number2 is $subtraction
$Number1 divided by $Number2 is $dividend
  - More precisely, Number1 divided by Number2 gives $fpdividend with a remainder of $modulos
EOF

Number1=5
Number2=3
multiplication=$((Number1 * Number2))
dividend=$((Number1 / Number2))
modulos=$((Number1 % Number2))
fpdividend=$(awk "BEGIN{printf \"%.3f\", $Number1/$Number2}")

cat <<EOF
$Number1 multiplied by $Number2 is $multiplication
$Number1 divided by $Number2 is $dividend
  - More precisely, Number1 divided by Number2 gives $fpdividend with a remainder of $modulos
EOF
