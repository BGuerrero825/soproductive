#!/bin/bash

cd "$HOME/dev/soproductive/"
file="fraudulent_commits.txt"

touch $file

# random=$((1 + RANDOM % 20))
random=1

if [ $random -eq 1 ]; then
  echo $((`cat $file` + 1)) > $file
fi  

git add $file
git commit -m "being productive"
git push
