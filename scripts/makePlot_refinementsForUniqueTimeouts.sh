#!/bin/sh

AMOUNTFILE="refinementsToutsUniqAmounts.csv"
REFONLYFILE="refinementsTimeoutsUniquesTable.csv"

awk -F"\t" '($9 == "TIMEOUT") { print $16; }' ../benchmarks/noRef.cegar.diff.csv > $REFONLYFILE

[ -f $AMOUNTFILE ] && rm $AMOUNTFILE
for i in `sort -n $REFONLYFILE | uniq`
  do AMOUNT=`egrep "^$i$" $REFONLYFILE | wc -l`
   echo -e "${i}\t$AMOUNT" >> $AMOUNTFILE
done

gnuplot plotScripts/histogram_refinementsForUniqueTimeouts.txt
