BRANCH=2.1;
CREATE=$1;

function create_branch {
    echo "git checkout $BRANCH";
    git checkout $BRANCH;
    echo "git checkout -b $CREATE";
    git checkout -b $CREATE;
}

for DIR in asset auth debug extension facile foundation html imagine memory model optimize resources support translation testbench view warden widget platform
do
    cd ../;
    cd $DIR;
    echo '-------';
    pwd;
    create_branch
done
