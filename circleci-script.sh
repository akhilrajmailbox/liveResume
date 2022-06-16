#!/bin/bash
export CIRCLECI_TAG_PREFIX="AutoRelease-1.0"

function publishCommit() {
    git config user.email "akhilrajmailbox@gmail.com"
    git config user.name "CircleCI Job"
    # git checkout main
    git add docs
    git commit --allow-empty -am "Automatic commit from CircleCI [skip ci]"
    git push origin main
}

function publishRelease() {
    LATEST_TAG=$(git tag -l --sort=taggerdate | grep ${CIRCLECI_TAG_PREFIX} | tail -1)
    if [[ ${LATEST_TAG}  == "" ]] ; then
        NEXT_VER="0"
    else
        CURR_VER=$(echo ${LATEST_TAG} | cut -d"." -f3)
        NEXT_VER=$((${CURR_VER} + 1))
    fi
    NEW_TAG=${CIRCLECI_TAG_PREFIX}.${NEXT_VER}
    git tag ${NEW_TAG}
    git push origin --tags
}


publishCommit \
    && publishRelease