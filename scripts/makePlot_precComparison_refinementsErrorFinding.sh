#!/bin/sh

awk -F"\t" '$2 == "false(reach)" || $11 == "false(reach)" {print $9, $18 }' ../benchmarks/symEx-locPrec-implOp.table.csv > refinementsConstrLocPrecErrorFinding.csv
gnuplot plotScripts/scatter_plot_constPrec_locPrec_refinementsErrFinding.txt
