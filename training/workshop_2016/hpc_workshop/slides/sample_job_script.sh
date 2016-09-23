#!/bin/tcsh
#PBS -q cores12
#PBS -N a_name_for_your_job
#PBS -l nodes=1:ppn=6
#PBS -l mem=32gb
#PBS -l walltime=120:00:00

# set some environment variables
setenv OMP_NUM_THREADS 6

# source paths if needed
source /home/sbalan/libpaths.csh

# run my program
/home/sbalan/hello.exe
