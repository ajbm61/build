BRANCH=3.0;
TAG=$1;

function tag_branch {
    echo "git checkout $BRANCH";
    git checkout $BRANCH;
    echo "git tag $TAG";
    git tag $TAG;
}

declare -a COMPONENTS=("asset" "auth" "avatar" "debug" "extension" "facile" "foundation" "html" "imagine" "installer" "kernel" "memory" "messages" "model" "notifier" "optimize" "resources" "support" "testbench" "testing" "tenanti" "translation" "view" "widget" "control" "story")

for DIR in "${COMPONENTS[@]}"
do
    cd ../;
    cd $DIR;
    echo '-------';
    pwd;
    tag_branch
done
