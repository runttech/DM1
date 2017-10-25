#!/bin/bash
: <<'END'
a=$1
#if (()) ... fi
#if (()) ... elif (()) ... elif (()) ... else ... fi
if (( $a > 0 )); then
   echo "Galvenais zars (jā apakšzars) -> tad, kad $a ir >0"
elif (( $a == 0 )); then
   echo "Alternatīvs zars (tikai jā gadijumā) -> tad, kad $a ir == 0"
else
   echo "Galvenais zars (nē apakšzars) -> tad, kad $a nav >0"
fi
END


