#!/bin/bash
#SBATCH --time=00-00:30:00
#SBATCH --ntasks=1
#SBATCH --job-name=infinite_job
#SBATCH --partition=vulture



#the following slurm command will submit the current jobscript, and allow it to start conditionally

#--dependency=afterok is used when the job finishes successfully
#--dependency=afternotok is used when the job does not finish successfully
#--dependency=afterany is used when you don't care about the exit status

sbatch --dependency=afterany:${SLURM_JOBID} $0 #note: $0 is the name of the file.


# include a sleep statement to prevent yourself from overloading the job submission system in case of a bug.
sleep 120

#yourcommand/codegoeshere - make sure it runs iteratively (for example, extending an MD simulation).

