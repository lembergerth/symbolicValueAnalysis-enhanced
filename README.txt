--------------------------
Efficient Symbolic Execution Using CEGAR over Two Abstract Domains
--------------------------

## The Benchmarks ##
Benchmark files are located in the directory 'benchmarks'.


## Recreating data and plots ##

-- Dependencies --
Linux with gnuplot and awk.

For performing your own benchmarks, the cpachecker repository branch
'symbolic-cegar' has to be checked out:
# svn checkout https://svn.sosy-lab.org/software/cpachecker/branches/symbolic-cegar

Revision 17278 contains all files necessary.

-- Recreate plots --
If you want to create gnuplot scripts from the data provided, use the gnuplot
scripts in 'scripts/plotScripts'.
Usage:
Simply type 
$ gnuplot <plotscriptPath>
on the command-line and press enter. The plot file named 'sp*.pdf' for scatter
plots and 'hg*.pdf' for histograms will be placed in your current directory.

If you want to use your own data, shell scripts for creating csv-files suited
for use with the gnuplot scripts are located in directory 'scripts'.
You will have to adjust the file names in those scripts to point to your
benchmark data, though.
Data files are expected to be in the same format used by the benchmark.py
script existing in the CPAchecker repository.

!!! For the following scripts, special measures have to be taken before executing them !!!

* makePlot_cegar_noCegar_errorFinding.sh,
  makePlot_cegar_noCegar_provingTrue.sh:
	Run
	$ <repo-directory>/scripts/table-generator.py -x ./benchmarks/tableGen_symEx-noCegar.cegar/table-generator_cegarTime.xml

	before execution. 'table-generator_cegarTime.xml' must be adjusted so
	that file names point to the correct files.

* makePlot_leqComparison_stoppedAmount.sh:
  	Run
	$ <repo-directory>/scripts/table-generator.py -x ./benchmarks/tableGen_leqSubs_leqImpl/table-generator_leqComparison_stoppedAmount.xml

	before execution. 'table-generator_leqComparison_stoppedAmount.xml' must be adjusted so
	that file names point to the correct files.


*  makePlot_leqComparison_stoppedAmount_locPrec.sh:
  	Run
	$ <repo-directory>/scripts/table-generator.py -x ./benchmarks/tableGen_leqSubs_leqImpl/table-generator_leqComparison_locPrec_stoppedAmount.xml

	before execution.
	'table-generator_leqComparison_locPrec_stoppedAmount.xml' must be
	adjusted so that file names point to the correct files.

* makePlot_stoppedTime.sh:
  	Run
	$ <repo-directory>/scripts/table-generator.py -x ./benchmarks/tableGen_leqSubs_leqImpl/table-generator_leqComparison_stoppedTime.xml

	before execution. 'table-generator_leqComparison_stoppedTime.xml' must be adjusted so
	that file names point to the correct files.


-- Recreate benchmarks --
To recreate benchmark data, use the benchmark script
'<repo-directory>/scripts/benchmark.py'

with test-sets '<repo-directory>/test/test-sets/symbolic-{refiner,slicedPrefixes}.xml'.

Results can be found in '<repo-directory>/test/results' after execution.
