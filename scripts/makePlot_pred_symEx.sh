#!/bin/sh

tail -n +4 ../benchmarks/symEx.pred.table.csv | awk -F"\t" '$2 == $11 && ($2 == "true" || $2 == "false(reach)") {print $3, $12}' > timeTable.symEx.pred.csv
gnuplot plotScripts/scatter_plot_cputime_pred_symEx.txt
