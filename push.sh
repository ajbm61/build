#!/bin/bash

source config.conf;

function push_origin {
    echo "git push origin --tags $BRANCH:$BRANCH";
    git push --tags origin $BRANCH:$BRANCH;
}

for DIR in "${COMPONENTS[@]}"
do
    cd ../;
    cd $DIR;
    echo '-------';
    pwd;
    push_origin
    sleep 60
done
