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

## 7. Add python module to your login script

    $ cd ~
    $ echo "module load dev_tools/nov2014/python-anaconda" >> .login

## 8. Create a work directory in `/share/splinter/user_name/` and give access to everyone

    $ cd /share/splinter/user_name
    $ mkdir work_dir
    $ chmod 777 work_dir

## 9. Clone [https://github.com/Astrophysics-UCL/HPCInfo](https://github.com/Astrophysics-UCL/HPCInfo) using git

In splinter we have an issue with using git. You will need to set a environment variable `GIT_SSL_NO_VERIFY` to `true`. Then it will work okay :) Below is an example.

    $ module load versioning/nov2014/git-2.1.3
    $ cd a_directory_you_like
    $ setenv GIT_SSL_NO_VERIFY true
    $ git clone https://github.com/Astrophysics-UCL/HPCInfo.git


