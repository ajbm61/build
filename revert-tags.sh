TAG=$1;

function revert_tag {
    echo "git tag -d $TAG";
    git tag -d $TAG;
}

declare -a COMPONENTS=("asset" "auth" "avatar" "debug" "extension" "facile" "foundation" "html" "imagine" "installer" "kernel" "memory" "messages" "model" "notifier" "optimize" "resources" "support" "testbench" "testing" "tenanti" "translation" "view" "widget" "control" "story")

for DIR in "${COMPONENTS[@]}"
do
    cd ../;
    cd $DIR;
    echo '-------';
    pwd;
    revert_tag
done
