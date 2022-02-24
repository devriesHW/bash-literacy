# bash-literacy

Literacy in shell scripting will save countless hours of repetitive, mundane tasks. Here I store shell-scripts or handy bash one-liners based on what I often use myself. Feel free to use to your advantage (and peril):

_Caveat lector_: Work in progress!

### Description of scripts:
- `infinite_slurm_submission.sh` : example job submission script that conditionally resubmits runs automatically on supercomputers that use the `slurm` workload manager.



### Handy bash one-liners (or: 'how do I do X?')

- **Replacing specific contents in a file:**
  - `sed -i 's/to_be_replaced/replacement/g' filename`
  - Use double quotes in case you are passing variables: `sed -i "s/to_be_replaced/${replacement_variable}/g" filename`
- **(Quick and dirty) one-line looping over directories:**
  - `for simdir in $(find $PWD -maxdepth 1 -type d); do cd $simdir ; ACTION ; cd .. ; done`  
  -  **Note**: _This will break for folders with spaces in their names. But what UNIX user does that anyway?_
- **Column extraction:**
  - `awk '{print $N}' <filename>` with `N` the column (integer) of the source file. 
  - It is convenient to line up a `grep` and `awk` call using a pipe: ` grep 'pattern' <filename> | awk '{print $N}'`
  - Format specs are allowed: `awk '{fprint("%5s,%3s\n",$N1,$N2)}'` where `N1,N2` are formatted with a certain number of places. Don't forget newlines (`\n`).
- **Check the working directory of a specific JobID within `slurm` workload managers:**
  - `scontrol show job <jobID> | grep WorkDir`
- **Syncing only a specific pattern or extension using `rsync` while preserving directory structure**
  - `rsync -ruav --include='*.extension' --include='*/' --exclude='*' source destination`
- **Converting all `.ppm`- files to a different format using *imagemagick*:**
  - `for ff in *.ppm ; do convert -density 1000 $ff ${ff%.*}.png ; done`
- **`rsync`-ing data while applying proper group permissions**
  - `rsync -a --no-g --chmod=Dg+s,g+w [source] [destination]`
- **Solving a failed `git push` due to a large file (over 25MB):**
  - `git filter-branch --force --index-filter 'git rm --cached --ignore-unmatch <relative/path/to/large/file>' --prune-empty --tag-name-filter cat -- --all`


