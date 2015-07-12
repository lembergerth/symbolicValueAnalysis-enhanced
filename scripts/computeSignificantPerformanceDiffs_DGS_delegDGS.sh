#!/bin/sh

echo "No. of tasks delegation is faster by more than 10%:"
tail -n +4 ../benchmarks/DGS.delegDGS.table.csv | awk -F"\t" '$2 == $11 && ($2 == "true" || $2 == "false(reach)") && (($12-$3)/$12) > 0.1' | wc -l
echo "No. of tasks no delegation is faster by more than 10%:"
tail -n +4 ../benchmarks/DGS.delegDGS.table.csv | awk -F"\t" '$2 == $11 && ($2 == "true" || $2 == "false(reach)") && (($3-$12)/$3) > 0.1' | wc -l
