BRANCH=master;
DESTINATION=$1;

function merge_to {
    echo "git checkout $DESTINATION";
    git checkout $DESTINATION;
    echo "git merge $BRANCH";
    git merge $BRANCH;
}

declare -a COMPONENTS=("asset" "auth" "avatar" "debug" "extension" "facile" "foundation" "html" "imagine" "installer" "kernel" "memory" "messages" "model" "notifier" "optimize" "resources" "support" "testbench" "testing" "tenanti" "translation" "view" "widget" "control" "story")

for DIR in "${COMPONENTS[@]}"
do
    cd ../;
    cd $DIR;
    echo '-------';
    pwd;
    merge_to
done
