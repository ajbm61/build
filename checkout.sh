#!/bin/bash

source config.conf;

function checkout {
    echo "git checkout $BRANCH";
    git checkout $BRANCH;
}

for DIR in "${COMPONENTS[@]}"
do
    cd ../;
    cd $DIR;
    pwd
    echo '-------';
    pwd;
    checkout
done
