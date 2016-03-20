#!/bin/bash

source config.conf;

cd ../platform
git checkout $BRANCH;

cd ../studio
git checkout $BRANCH;

php-cs-fixer fix --config-file=../build/.php_cs
