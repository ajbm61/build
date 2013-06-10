function push_origin {
    echo "git push origin --tags";
    git push --tags origin master:master 2.0:2.0;
}

for DIR in support testbench memory facile asset auth extension html resources view widget foundation
do
    cd ../;
    cd $DIR;
    echo '-------';
    pwd;
    push_origin
    sleep 60
done
