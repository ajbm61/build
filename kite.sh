source config.conf;

cd ../foundation
git checkout $BRANCH;

cd ../installer
git checkout $BRANCH;

cd ../control
git checkout $BRANCH;

# if [[ -d ../kite ]]; then
    # foundation
    cp -Rf ../kite/resources/assets/* ../foundation/resources/assets/
    cp -Rf ../kite/resources/js/* ../foundation/resources/js/
    cp -Rf ../kite/resources/views/packages/orchestra/foundation/* ../foundation/resources/views/
    cp -Rf ../kite/bower.json ../foundation/bower.json
    cp -Rf ../kite/gulpfile.js ../foundation/gulpfile.js

    # installer
    cp -Rf ../kite/resources/views/packages/orchestra/installer/* ../installer/resources/views/

    # control
    cp -Rf ../kite/resources/views/packages/orchestra/control/* ../control/resources/views/
# fi
