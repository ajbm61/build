BRANCH=2.0;
TAG=$1;

function tag_branch {
    echo "git checkout $BRANCH";
    git checkout $BRANCH;
    echo "git tag $TAG";
    git tag $TAG;
}

for DIR in asset auth debug extension facile foundation html imagine memory model optimize resources support translation testbench view widget platform
do
    cd ../;
    cd $DIR;
    echo '-------';
    pwd;
    tag_branch
done
