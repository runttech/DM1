#!/bin/bash

a=$1
b=$2
c=$3
if1=[ $a > $b ]
echo $if1
#if [ $a > $b -a $c ]
if [ $a > $b && $a > $c ]

then
echo "a ($a) ir lielāks skaitlis, jo b ($b) un c ($c)"
fi

: <<'END'
echo "Lietotāj, nepieciešams ievadīt pirmo skaitli: "
read a
echo "Lietotāj, nepieciešams ievadīt otro skaitli: "
read b
echo "Lietotāj, nepieciešams ievadīt trešo skaitli: "
read c
if (( $a == $b == $c )) # ja atbilde uz šo jautājumu ir ,jā
then
echo "a ($a) == b ($b)" # tad tiek izpildīts starp if un elif komandu bloks
elif (( $a > $b )) # jautājums (2.) ja uz 1. jaut atbilde bija nē
then
echo "a ($a) > b ($b)" #  ,ja atbilde uz 2. jaut. ir jā
else
echo "a ($a) < b ($b)" # ,ja atbilde uz 2. jaut. ir nē
fi
END
