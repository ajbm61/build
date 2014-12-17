BRANCH=master;

cd ../platform
git checkout $BRANCH;

cd ../foundation
git checkout $BRANCH;

for DIR in config lang views 
do
    cp -Rf ../platform/resources/$DIR/* src/Testing/fixture/resources/$DIR
    echo "COPIED $DIR";
done
