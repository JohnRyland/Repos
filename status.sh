#!/bin/bash

function status
{
  pushd ${1} > /dev/null
  URL=$(git config --get remote.origin.url)
  # BRANCH=$(git branch | tail -n 1)
  # BRANCH=$(git rev-parse --abbrev-ref HEAD)
  BRANCH=$(git branch -r --points-at HEAD | tail -n 1)
  printf '%-50s %-20s %-40s\n' "$(pwd)" "${BRANCH}" "${URL}"
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

