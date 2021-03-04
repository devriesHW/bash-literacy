# bash-literacy

Literacy in shell scripting will save countless hours of repetitive, mundane tasks. Here I store shell-scripts or handy bash one-liners based on what I often use myself. Feel free to use to your advantage (and peril):

_Caveat lector_: Work in progress!

### Description of scripts:
- `infinite_slurm_submission.sh` : example job submission script that conditionally resubmits runs automatically on supercomputers that use the `slurm` workload manager.



### Handy bash one-liners (or: 'how do I do X?')

- Replacing specific contents in a file: 
  - `sed -i 's/to_be_replaced/replacement/g' filename`
- (Quick and dirty) one-line looping over directories: 
  - `for simdir in $(find $PWD -maxdepth 1 -type d); do cd $simdir ; ACTION ; cd .. ; done`  
  -  **Note**: _This will break for folders with spaces in their names. But what UNIX user does that anyway?_
- Column extraction:
  - `awk '{print $N}' <filename>` with `N` the column (integer) of the source file. 
  - It is convenient to line up a `grep` and `awk` call using a pipe: ` grep 'pattern' <filename> | awk '{print $N}'`
  - Format specs are allowed: `awk '{fprint("%5s,%3s\n",$N1,$N2)}'` where `N1,N2` are formatted with a certain number of places. Don't forget newlines (`\n`).



