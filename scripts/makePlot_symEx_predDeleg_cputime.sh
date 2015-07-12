#!/bin/sh

tail -n +4 ../benchmarks/symEx.predDelegation.table.csv | awk -F"\t" '$2 == $11 && ($2 == "false(reach)" || $2 == "true") {print $3, $12}' > timeTable.symEx.predDeleg.csv
gnuplot plotScripts/scatter_plot_cputime_symEx_predDeleg.txt
