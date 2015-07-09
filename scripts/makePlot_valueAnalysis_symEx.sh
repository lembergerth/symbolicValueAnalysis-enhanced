#!/bin/sh

tail -n +4 ../benchmarks/symEx.valueAnalysis.table.csv | awk -F"\t" '$2 == $11 && ($2 == "true" || $2 == "false(reach)") {print $3, $12}' > timeTable.valueAnalysisSymEx.csv
gnuplot plotScripts/scatter_plot_cputime_VA_symEx.txt
