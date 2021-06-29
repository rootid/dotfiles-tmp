#!/bin/sh

# Always run from the directory
function generate_index() {
  echo $PWD
  which fd 2>/dev/null
  if [ ${?} -eq 0 ]
  then
    # Remove the file
    rm -rf index.dat
    # Generate index
    fd --type f > index.dat
  else
    echo "Please install fd"
  fi
}

generate_index
