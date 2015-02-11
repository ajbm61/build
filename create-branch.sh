#!/bin/bash

source config.conf;
CREATE=$1;

function create_branch {
    echo "git checkout $BRANCH";
    git checkout $BRANCH;
    echo "git checkout -b $CREATE";
    git checkout -b $CREATE;
}

for DIR in "${COMPONENTS[@]}"
do
    cd ../;
    cd $DIR;
    echo '-------';
    pwd;
    create_branch
done
