### In your home directory create a dirctory called `linux_hpc_workshop`

    $ cd
    $ mkdir linux_hpc_workshop

### Change directory to `linux_hpc_workshop`

    $ cd linux_hpc_workshop

### What is the present working directory?

    $ pwd

### Make a directory `level_1/level_2`, and move to `level_1/level_2` in one command

    $ mkdir -p level_1/level_2; cd level_1/level_2

### Move back to previous directory

    $ cd -

### Remove the directory (and its contents) `level_1`

    $ rm -r level_1

### Make a symbolic link to `usr/lib` in the current directory called `my_sybolic_link`

    $ ln -s /usr/lib ./my_sybolic_link

### Create a file called `bla.txt` contents `this file has a word called bla`

    $ echo "this file has a word called bla" > bla.txt

### Add another line in `bla.txt` called `this is the second line`

    $ echo "this is the second line" >> bla.txt

### Check if it worked

    $ more bla.txt

### Search for the phrase bla in `bla.txt`

    $ grep "bla" bla.txt












### Find the location of your python installation

    $ which python

### Find the installation location(s) of `liblapack.a`

    $ locate lapack

### Find whether an object `daxpy` is in `liblapack.a`

    $ nm /usr/lib/libclapack.a | grep "daxpy"

### Find the value the environment variable `PATH` and `LD\_LIBRARY\_PATH`

    $ echo $PATH
    $ echo $LD_LIBRARY_PATH

### Set the environment variable `MY_LINUX_HPC_VAR` to the absolute path to `linux_hpc_workshop`

    $ cd linux_hpc_workshop
    $ export MY_LINUX_HPC_VAR=${PWD}
    $ setenv MY_LINUX_HPC_VAR ${PWD}
    $ echo ${MY_LINUX_HPC_VAR}

### Add, i.e append the absolute path to `linux_hpc_workshop` to the `PATH`

    $ export ${PATH}=${PATH}:${PWD}
    $ setenv ${PATH} ${PATH}:${PWD}
    $ echo ${PATH}

### Use the source command do the last two steps from source file.

    $ touch my_source_file.sh
    ## now open my_source_file.sh using a text editor and add the line
    $ export MY_LINUX_HPC_VAR=${PWD}
    $ export ${PATH}=${PATH}:${PWD}
    ## save the file and use source to source the file
    $ source my_source_file.sh

### Use man command to find the option of `ls` that shows the output in Kilobyte,Megabyte

    $ man ls
    ## the answer is ls -lh














### Find hostname,processor type,operating system version and write these info inot a text file called `info.txt`

    $ uname -a > info.txt

### Find the list of people who are loged into the system

    # who

### Fine the process that is taking most of the CPU at the moment

    # top

### Find ids of the processes that you are running

  # ps -U your_user_name













### Make a directory called `to_be_compressed`. Add the files `hello.cpp` and `hello.py` in this dir. Now compress this directory using tar and zip

    $ mkdir to_be_compressed
    $ touch to_be_compressed/hello.cpp
    $ touch to_be_compressed/hello.py
    $ tar cvzf to_be_compressed.tar.gz to_be_compressed/

### Delete the dirctory `to_be_compressed` and extract the files from `to_be_compressed.tar.gz`

    $ rm -r to_be_compressed
    $ tar xvzf to_be_compressed.tar.gz

### Use wget to download  files from `https::cftio.org/cfitio.tar.gz`

    $ wget https::cftio.org/cfitio.tar.gz

### What is the size of the item you just downloaded in MB

    $ ls -lah cfitio.tar.gz

### Find the number of occurrences of the phrase `table` is easy in all the files with extension `h`

    $ grep "table" *.h

### Remove all the fiels with extension `.h`

    $ rm *.h

### Copy the files with extension `.c` into a new directory `c_files`

    $ cp *.c c_files
