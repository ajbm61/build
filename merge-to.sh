BRANCH=master;
DESTINATION=$1;

function merge_to {
    echo "git checkout $DESTINATION";
    git checkout $DESTINATION;
    echo "git merge $BRANCH";
    git merge $BRANCH;
}

for DIR in asset auth debug extension facile foundation html imagine memory model optimize resources support translation testbench view widget platform
do
    cd ../;
    cd $DIR;
    echo '-------';
    pwd;
    merge_to
done
