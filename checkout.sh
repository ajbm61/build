BRANCH=$1;

function checkout {
    echo "git checkout $BRANCH";
    git checkout $BRANCH;
}

for DIR in asset auth extension facile foundation html memory model resources support testbench translation view widget
do
    cd ../;
    cd $DIR;
    echo '-------';
    pwd;
    checkout
done
