BRANCH=master;

function checkout {
    echo "git checkout $BRANCH";
    git checkout $BRANCH;
}

for DIR in asset auth debug extension facile foundation html imagine memory model optimize resources support translation testbench view widget platform
do
    cd ../;
    cd $DIR;
    echo '-------';
    pwd;
    checkout
done
