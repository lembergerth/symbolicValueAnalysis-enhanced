#!/bin/sh

BENCHFILE="../benchmarks/symEx-allItpOptions.table.csv"
VALFILE="timeTable.VOVF.csv"

tail -n +4 $BENCHFILE | cut -f3,12 > $VALFILE
gnuplot plotScripts/scatter_plot_valuesOnly_valuesFirst_cputime.txt
