TAG=$1;

function revert_tag {
    echo "git tag -d $TAG";
    git tag -d $TAG;
}

for DIR in asset auth extension facile foundation html memory model resources support testbench translation view widget
do
    cd ../;
    cd $DIR;
    echo '-------';
    pwd;
    revert_tag
done
