# bash-literacy

Literacy in shell scripting will save countless hours of repetitive, mundane tasks. Here I store example shell-scripts or handy bash one-liners (collected through _the interwebs_). Feel free to use to your advantage (and peril):

_Caveat lector_: Work in progress!



### Handy bash one-liners (or: 'how do I do X?')

- Replacing specific contents in a file: `sed -i s/to_be_replaced/replacement/g' filename`
- (Quick and dirty) one-line looping over directories: `for simdir in $(find $PWD -maxdepth 1 -type d); do cd $simdir ; ACTION ; cd .. ; done` . **Note**: _This will break for folders with spaces in their names. But what UNIX user does that anyway?_


