Exercises I

### 1. Go to your home directory and create a directory called `linux_hpc_workshop`.

    $ cd ~
    $ mkdir linux_hpc_workshop

### 2. Change directory to `linux_hpc_workshop`.

    $ cd linux_hpc_workshop

### 3. Find the name of the present working directory.

    $ pwd

### 4. Make a directory `level_1/level_2`, and move to `level_1/level_2` in one command.

    $ mkdir -p level_1/level_2; cd level_1/level_2

### 5. Move back to the previous directory.

    $ cd -

### 6. Remove the directory `level_1` (and its contents).

    $ rm -r level_1

### 7. In the current directory make a symbolic link to `usr/lib` called `my_sybolic_link`.

    $ ln -s /usr/lib ./my_sybolic_link

### 8. Create a file called `foo.txt` with contents `This file contains the word foo`.

    $ echo "This file contains the word foo" > foo.txt

### 9. Add another line in `foo.txt` with contents `This is the second line`.

    $ echo "This is the second line" >> foo.txt

### 10. Check to see if it worked.

    $ more foo.txt

### 11. Search for the phrase foo in `foo.txt`.

    $ grep "foo" foo.txt


Exercises II

### 1. Find the location of your python installation.

    $ which python

### 2. Find the installation location(s) of `liblapack.a`.

    $ locate lapack

### 3. Find whether an object `daxpy` is in `liblapack.a`.

    $ nm /usr/lib/libclapack.a | grep "daxpy"

### 4. Find the value the environment variable `PATH` and `LD\_LIBRARY\_PATH`.

    $ echo $PATH
    $ echo $LD_LIBRARY_PATH

### 5. Set the environment variable `MY_LINUX_HPC_VAR` to equal the absolute path to `linux_hpc_workshop`.

    $ cd linux_hpc_workshop
    $ export MY_LINUX_HPC_VAR=${PWD}
    $ setenv MY_LINUX_HPC_VAR ${PWD}
    $ echo ${MY_LINUX_HPC_VAR}

### 6. Add (i.e append) to the `PATH` the absolute path to `linux_hpc_workshop`.

    $ export ${PATH}=${PATH}:${PWD}
    $ setenv ${PATH} ${PATH}:${PWD}
    $ echo ${PATH}

### 7. Use the source command do the last two steps from source file.

    $ touch my_source_file.sh
    ## now open my_source_file.sh using a text editor and add the line
    $ export MY_LINUX_HPC_VAR=${PWD}
    $ export ${PATH}=${PATH}:${PWD}
    ## save the file and use source to source the file
    $ source my_source_file.sh

### 8. Use the man command to find the option of `ls` that shows the output in Kilobyte,Megabyte.

    $ man ls
    ## the answer is ls -lh


Exercises III

### 1. Find hostname,processor type,operating system version and write this info into a text file called `info.txt`.

    $ uname -a > info.txt

### 2. List the people who are logged into the system.

    # who

### 3. Find the process that is taking most of the CPU at the moment.

    # top

### 4. Find the IDs of the processes that you are running.

  # ps -U your_user_name

### 5. Make a directory called `to_be_compressed`. Add the files `hello.cpp` and `hello.py` in this dir. Then compress this directory using tar and zip.

    $ mkdir to_be_compressed
    $ touch to_be_compressed/hello.cpp
    $ touch to_be_compressed/hello.py
    $ tar cvzf to_be_compressed.tar.gz to_be_compressed/

### 6. Delete the dirctory `to_be_compressed` and extract the files from `to_be_compressed.tar.gz`.

    $ rm -r to_be_compressed
    $ tar xvzf to_be_compressed.tar.gz

### 7. Use wget to download  files from `ftp://heasarc.gsfc.nasa.gov/software/fitsio/c/cfitsio3370.tar.gz`.

    $ wget ftp://heasarc.gsfc.nasa.gov/software/fitsio/c/cfitsio3370.tar.gz

### 8. Find the size of the item you just downloaded in MB.

    $ ls -lah cfitsio3370.tar.gz

### 9. Find the number of occurrences of the phrase `table` in all the files with extension `h`.

    $ cd cfitsio
    $ grep "table" *.h

### 10. Remove all the files with extension `.h`.

    $ rm *.h

### 11. Copy the files with extension `.c` into a new directory `c_files`.

    $ cp *.c c_files
