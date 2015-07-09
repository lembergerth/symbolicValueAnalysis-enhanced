#!/bin/sh

tail -n +4 ../benchmarks/symEx-delegation.table.csv | awk -F"\t" '$2 == $11 && ($2 == "true" || $2 == "false(reach)") {print $3, $12}' > noDeleg_deleg_cputime.csv
gnuplot plotScripts/scatter_plot_cputime_noDeleg_deleg.txt
