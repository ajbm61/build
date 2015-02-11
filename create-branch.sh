BRANCH=3.0;
CREATE=$1;

function create_branch {
    echo "git checkout $BRANCH";
    git checkout $BRANCH;
    echo "git checkout -b $CREATE";
    git checkout -b $CREATE;
}

declare -a COMPONENTS=("asset" "auth" "avatar" "debug" "extension" "facile" "foundation" "html" "imagine" "installer" "kernel" "memory" "messages" "model" "notifier" "optimize" "resources" "support" "testbench" "testing" "tenanti" "translation" "view" "widget" "control" "story")

for DIR in "${COMPONENTS[@]}"
do
    cd ../;
    cd $DIR;
    echo '-------';
    pwd;
    create_branch
done
