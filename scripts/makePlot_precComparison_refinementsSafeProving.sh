#!/bin/sh

awk -F"\t" '$11 == "true" || $2 == "true" {print $9, $18 }' ../benchmarks/symEx-locPrec-implOp.table.csv > refinementsConstrLocPrecSafeProving.csv
gnuplot plotScripts/scatter_plot_constPrec_locPrec_refinementsSafeProving.txt
