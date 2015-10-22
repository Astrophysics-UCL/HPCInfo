# submit a job
qsub job_script
# sumit an interative job
qsub -I
# check the status of a job
checkjob job_id
# list the status of all jobs
qstat
# show the queue
showq
# delete a job
qdel job_id
