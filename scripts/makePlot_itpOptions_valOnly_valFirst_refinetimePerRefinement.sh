#!/bin/sh

BENCHFILE="../benchmarks/symEx-allItpOptions.table.csv"
VALFILE="refinementsAndRefinetime.csv"

tail -n +4 $BENCHFILE | cut -f9,10,18,19 | awk -F"\t" -v OFS='\t' '$1 == $3 { print $1, $2, $3, $4 }' > $VALFILE
gnuplot plotScripts/scatter_plot_valuesOnly_valuesFirst_refinetimePerRefinement.txt
