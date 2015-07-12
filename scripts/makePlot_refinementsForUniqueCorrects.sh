#!/bin/sh

AMOUNTFILE="refinementsCorrUniqAmounts.csv"
REFONLYFILE="refinementsCorrectUniquesTable.csv"

awk -F"\t" '($9 == "true") || ($9 == "false(reach)") { print $16; }' ../benchmarks/noRef.cegar.diff.csv > $REFONLYFILE

[ -f $AMOUNTFILE ] && rm $AMOUNTFILE
for i in `sort -n $REFONLYFILE | uniq`
  do AMOUNT=`egrep "^$i$" $REFONLYFILE | wc -l`
   echo -e "${i}\t$AMOUNT" >> $AMOUNTFILE
done

gnuplot plotScripts/histogram_refinementsForUniqueCorrects.txt
