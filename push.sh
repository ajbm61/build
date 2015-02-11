BRANCH=master;

function push_origin {
    echo "git push origin --tags $BRANCH:$BRANCH";
    git push --tags origin $BRANCH:$BRANCH;
}

declare -a COMPONENTS=("asset" "auth" "avatar" "debug" "extension" "facile" "foundation" "html" "imagine" "installer" "kernel" "memory" "messages" "model" "notifier" "optimize" "resources" "support" "testbench" "testing" "tenanti" "translation" "view" "widget" "control" "story")

for DIR in "${COMPONENTS[@]}"
do
    cd ../;
    cd $DIR;
    echo '-------';
    pwd;
    push_origin
    sleep 60
done
