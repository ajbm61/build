#!/bin/bash

source config.conf;
DESTINATION=$1;

function merge_to {
    echo "git checkout $DESTINATION";
    git checkout $DESTINATION;
    echo "git merge $BRANCH";
    git merge $BRANCH;
}

for DIR in "${COMPONENTS[@]}"
do
    cd ../;
    cd $DIR;
    echo '-------';
    pwd;
    merge_to
done
