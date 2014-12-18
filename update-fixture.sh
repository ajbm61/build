BRANCH=master;

cd ../platform
git checkout $BRANCH;

cd ../testing
git checkout $BRANCH;

for DIR in config lang views 
do
    cp -Rf ../platform/resources/$DIR/* fixture/resources/$DIR
    echo "COPIED $DIR";
done
