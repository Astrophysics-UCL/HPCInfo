# Solutions to exercises in the HPC workshop

## 1. Login to `splinter` and find the path to your `$HOME` directory and your quota

    $ ssh -X user-name@splinter-login.star.ucl.ac.uk
    $ pwd
    $ quota

## 2. Request an interative queue and find the node in which you are in

    $ qsub -I
    $ hostname

## 3. In the interative queue and run `ipython`

    $ module load dev_tools/nov2014/python-anaconda
    $ ipython

## 4. Write a job script run a `hello world` in python and submit to the queue

The script `my_job_script.csh` is below is below

    #!/bin/tcsh
    #PBS -q compute
    #PBS -N hello_world
    #PBS -l nodes=1:ppn=1
    #PBS -l mem=1gb
    #PBS -l walltime=00:01:00

    module load dev_tools/nov2014/python-anaconda
    
    python -c "print 'hello'"

The submission is below

    $ qsub my_job_script.csh

Make sure that you see the output on job completion

## 5. In the above `hello world` example, specify the output to a file

Add the following `PBS` command to the script

    #!/bin/tcsh
    #PBS -q compute
    #PBS -N hello_world
    #PBS -l nodes=1:ppn=1
    #PBS -l mem=1gb
    #PBS -l walltime=00:01:00
    #PBS -o /home/sbalan/hello_world.out

    module load dev_tools/nov2014/python-anaconda
    
    python -c "print 'hello'"

## 6. Using the above example, check the job status using `qstat` and `checkjob`

    $ qstat
    $ checkjob job-id


