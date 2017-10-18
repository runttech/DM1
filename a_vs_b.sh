#!/bin/bash

echo "Lietotāj, nepieciešams ievadīt pirmo skaitli: "
read a
echo "Lietotāj, nepieciešams ievadīt otro skaitli: "
read b
#if [ $a -gt $b ]
if (( $a == $b )) # ja atbilde uz šo jautājumu ir ,jā
then
echo "a ($a) == b ($b)" # tad tiek izpildīts starp if un elif komandu bloks
elif (( $a > $b )) # jautājums (2.) ja uz 1. jaut atbilde bija nē
then
echo "a ($a) > b ($b)" #  ,ja atbilde uz 2. jaut. ir jā
else
echo "a ($a) < b ($b)" # ,ja atbilde uz 2. jaut. ir nē
fi

