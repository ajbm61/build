BRANCH=$1;

function checkout {
    echo "git checkout $BRANCH";
    git checkout $BRANCH;
}

for DIR in asset auth debug extension facile foundation html memory model optimize resources support testbench translation view widget
do
    cd ../;
    cd $DIR;
    echo '-------';
    pwd;
    checkout
done
