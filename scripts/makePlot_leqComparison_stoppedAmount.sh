#!/bin/sh

tail -n +4 ../benchmarks/tableGen_leqSubs_leqImpl/table-generator_leqComparison_stoppedAmount.table.csv  | awk -F"\t" '$4 != "TIMEOUT" {print $3, $5 }' > stoppedAmount.csv
gnuplot plotScripts/scatter_plot_leqSub_leqImpl_stops.txt
