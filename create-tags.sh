TAG=$1;
BRANCH=$2;

function tag_branch {
    echo "git checkout $BRANCH";
    git checkout $BRANCH;
    echo "git tag $TAG";
    git tag $TAG;
}

for DIR in asset auth extension facile foundation html memory model resources support testbench translation view widget
do
    cd ../;
    cd $DIR;
    echo '-------';
    pwd;
    tag_branch
done
