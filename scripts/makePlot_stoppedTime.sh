#!/bin/sh

tail -n +4 ../benchmarks/tableGen_leqSubs_leqImpl/table-generator_leqComparison_stoppedTime.table.csv  | awk -F"\t" '$2 == $4 {print $3, $5 }' > stoppedTime.csv
gnuplot plotScripts/scatter_plot_leqSub_leqImpl_stoptime.txt
