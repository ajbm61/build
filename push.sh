function push_origin {
    echo "git push origin --tags";
    git push --tags origin master:master 2.0:2.0;
}

for DIR in imagine translation testbench support debug memory model facile asset auth extension html resources view widget optimize foundation platform
do
    cd ../;
    cd $DIR;
    echo '-------';
    pwd;
    push_origin
    sleep 60
done
