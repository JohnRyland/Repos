#!/bin/bash

function status
{
  pushd ${1} > /dev/null
  URL=$(git config --get remote.origin.url)
  BRANCH=$(git branch | tail -n 1) # rev-parse --abbrev-ref HEAD)
  printf '%-50s %-12s %-40s\n' "$(pwd)" "${BRANCH}" "${URL}"
  git status -s
  popd > /dev/null
}

for DIR in *
do
  if [ -f "${DIR}/.git" ]
  then
    status ${DIR}
  fi
done

status .

