#!/bin/sh

BENCHFILE="../benchmarks/symEx-allItpOptions.table.csv"
VALFILE="timeTableRef.VOVF.csv"

tail -n +4 $BENCHFILE | cut -f10,19 > $VALFILE
gnuplot plotScripts/scatter_plot_valuesOnly_valuesFirst_refinetime.txt
