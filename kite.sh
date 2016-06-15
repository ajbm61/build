source config.conf;

cd ../foundation
git checkout $BRANCH;

# if [[ -d ../kite ]]; then
    cp -Rf ../kite/resources/assets/* ../foundation/resources/assets/
    cp -Rf ../kite/resources/js/* ../foundation/resources/js/
    cp -Rf ../kite/resources/views/packages/orchestra/foundation/* ../foundation/resources/views/
    cp -Rf ../kite/bower.json ../foundation/bower.json
    cp -Rf ../kite/gulpfile.js ../foundation/gulpfile.js
# fi
