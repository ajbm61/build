FROM_BRANCH=$1;
TO_BRANCH=$2;

function merge_to {
    echo "git checkout $TO_BRANCH";
    git checkout $TO_BRANCH;
    echo "git merge $FROM_BRANCH";
    git merge $FROM_BRANCH;
}

for DIR in asset auth extension facile foundation html memory model resources support testbench translation view widget
do
    cd ../;
    cd $DIR;
    echo '-------';
    pwd;
    merge_to
done
