#!/bin/sh

awk -F"\t" '($2 == "true") || ($5 == "true") { print $3, $6; }' ../benchmarks/tableGen_symEx-noCegar.cegar/table-generator_cegarTime.table.csv > timeTableTrues.csv
gnuplot plotScripts/scatter_plot_timeToProveTrue_cegar_noCegar.txt
