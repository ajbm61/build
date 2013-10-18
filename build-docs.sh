if [ "$1" == "master" ]; then TARGET="2.1"; else TARGET=$1; fi
BRANCH=$1;

function build_docs {
    echo "git checkout $BRANCH";
    git checkout $BRANCH;
    rm -Rf ../docs/$BRANCH/components/$DIR/*;
    cp -r docs/* ../docs/$TARGET/components/$DIR/;
    mv ../docs/$BRANCH/components/$DIR/readme.md ../docs/$TARGET/components/$DIR/index.md;
}

for DIR in asset auth extension facile foundation html memory model resources support translation testbench view widget
do
    cd ../;
    cd $DIR;
    echo '-------';
    pwd;
    build_docs
done
