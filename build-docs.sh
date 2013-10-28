if [ "$1" == "master" ]; then TARGET="2.1"; else TARGET=$1; fi
BRANCH=$1;

function build_platform {
    cd ../platform;
    echo '-------';
    pwd;
    echo "git checkout $BRANCH";
    git checkout $BRANCH;
    rm -Rf ../docs/$TARGET/*;
    cp -r docs/* ../docs/$TARGET/;
    mv ../docs/$TARGET/readme.md ../docs/$TARGET/index.md;
    mkdir ../docs/$TARGET/components;
}

function build_docs {
    echo "git checkout $BRANCH";
    git checkout $BRANCH;
    mkdir ../docs/$TARGET/components/$DIR;
    cp -r docs/* ../docs/$TARGET/components/$DIR/;
    mv ../docs/$TARGET/components/$DIR/readme.md ../docs/$TARGET/components/$DIR/index.md;
}

build_platform;

for DIR in asset auth debug extension facile foundation html memory model optimize resources support translation testbench view widget
do
    cd ../;
    cd $DIR;
    echo '-------';
    pwd;
    build_docs;
done
