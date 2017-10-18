#!/bin/bash

echo "Lietotāj, nepieciešams ievadīt pirmo skaitli: "
read a
echo "Lietotāj, nepieciešams ievadīt otro skaitli: "
read b
c=`expr $a + $b`
echo "$a + $b = "$c
