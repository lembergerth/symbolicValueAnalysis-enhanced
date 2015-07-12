#!/bin/sh

tail -n +4 ../benchmarks/symEx-delegation.table.csv | awk -F"\t" '$2 == $11 && ($2 == "true" || $2 == "false(reach)") {print $10, $19}' > noDeleg_deleg_refinetime.csv
gnuplot plotScripts/scatter_plot_refinetime_noDeleg_deleg.txt
