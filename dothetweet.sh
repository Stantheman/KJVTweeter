#!/bin/bash
# grab the first verse, tweet it, then delete it from the file

# current directory trick from:
# http://stackoverflow.com/questions/59895/can-a-bash-script-tell-what-directory-its-stored-in
dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
tweet=$(head -n1 $dir/random_bible.txt)
/usr/bin/perl $dir/tweeter.pl "$tweet"
sed -i '1d' $dir/random_bible.txt
