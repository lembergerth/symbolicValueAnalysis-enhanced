#!/bin/sh

tail -n +4 ../benchmarks/DGS.NS.table.csv | awk -F"\t" '$2 == $11 && ($2 == "false(reach)" || $2 == "true") {print $3, $12}' > timeTable.DGSNS.csv
gnuplot plotScripts/scatter_plot_cputime_DGS_noSelection.txt
