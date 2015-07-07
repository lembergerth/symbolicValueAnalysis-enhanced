#!/bin/sh

BENCHFILE="../benchmarks/symEx-allItpOptions.table.csv"
VALFILE="timeTable.VFCF.csv"

tail -n +4 $BENCHFILE | cut -f12,21 > $VALFILE
gnuplot plotScripts/scatter_plot_valuesFirst_constrFirst_cputime.txt
