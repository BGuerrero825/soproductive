#!/bin/bash

# move into the repo directory
cd "$HOME/dev/soproductive/"
commits="commits.txt"
src="src.c"
target="target.c"

touch $commits
touch $target

git pull

# Roll for a 1/100 chance
random=$((RANDOM % 100))

if [ $random -eq 1 ]; then
  # increment the commits counter file
  echo $((`cat $commits` + 1)) > $commits
  num=`cat $commits`
  # copy the corresponding line from src to target
  sed -n "${num}p" src.c >> target.c

  # push to git
  git add $target
  git commit -m "added comments;"
  git push
fi  
