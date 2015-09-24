#!/bin/bash
#PBS -N hello_world_program
#PBS -l nodes=1:ppn=4
#PBS -l mem=2gb
#PBS -j oe
#PBS -V

# source the required scripts
# this sets the PATH
source /home/sbalan/binpaths.sh
# this sets the LD_LIBRARY_PATHS
source /home/sbalan/libpaths.sh

# run my program
/home/sbalan/hello.exe
