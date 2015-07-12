#!/bin/sh

awk -F"\t" '($2 == "false(reach)") || ($5 == "false(reach)") { print $3, $6; }' ../benchmarks/tableGen_symEx-noCegar.cegar/table-generator_cegarTime.table.csv > timeTable.csv
gnuplot plotScripts/scatter_plot_timeToFindError_cegar_noCegar.txt
