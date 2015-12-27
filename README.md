# Getting and Cleaning Data - Course Project

## Installation

Installing this code is as simple as cloning this Git repo.  Once the repo is cloned, all required
scripts and data will be accessible if you launch R in the repo directory.

Note: this code depends on some 3rd party R packages which will need to be available.  Dependent
packages are:

* dplyr
* data.table

## Running the code

Once installed, you can run this analysis a couple of different ways.

If you are on a unix/linux
based system, the easiest way is simply to run the command

$> ./run_analysis.R

on the commmand line.  The script has the exectuable bit set and uses Rscript to enable
the script to act as an executable program.  Note that for this to work, your R installation
must provide the Rscript command on the path.

Another option is to simply start an R shell and then use the source() function to load the script.
Ex:

> source("run_analysis.R")

Finally, you can use the R command with the -file argument, something like this:

$> R --slave -f run_analysis.R

## Output

After the script executes, it will leave a file named output.txt in the current directory.  The
output file is a comma delimited text file which contains the mean of each selected variable
from the original dataset, calculated across all observations for a given combination of Subject
and Activity.  The variables selected from the original, raw data are all of the variables
related to "mean" and "standard deviation".

## Code Book

See the [code book](https://github.com/mindcrime/GettingCleaningData/blob/master/codebook.md) for more detailed information on the data in the output.


