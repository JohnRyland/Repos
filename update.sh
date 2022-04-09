#!/bin/bash

git submodule update --init --remote --no-fetch --recursive

function update
{
  pushd ${1} > /dev/null
  BRANCH=$(git branch -r --points-at HEAD | head -n 1 | cut -d '>' -f 2 | cut -d '/' -f 2)
  # git checkout -b ${BRANCH} --track origin/${BRANCH}
  git branch -u origin/${BRANCH} ${BRANCH}
  git fetch
  git pull origin ${BRANCH}
  # Uncomment if you want to force the submodules on to the branch they point at
  # git checkout ${BRANCH}
  popd > /dev/null
}

for DIR in *
do
  if [ -f "${DIR}/.git" ]
  then
    update "${DIR}"
  fi
done

update .

