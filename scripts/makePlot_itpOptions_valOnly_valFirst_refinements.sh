#!/bin/sh

BENCHFILE="../benchmarks/symEx-allItpOptions.table.csv"
VALFILE="refinementsVOVF.csv"

tail -n +4 $BENCHFILE | grep -v "TIMEOUT" | cut -f9,18 > $VALFILE
gnuplot plotScripts/scatter_plot_valuesOnly_valuesFirst_refinements.txt
