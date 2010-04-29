#!/bin/sh

# Update the documentation for HEAD.
# OK this is not the prettiest thing ever, but it works.

cd ../wee-docupdate/ && git pull && make api && cd -
rm -rf api/HEAD/* && cp -r ../wee-docupdate/tools/api/* api/HEAD/
rm api/HEAD/makeapi.php api/HEAD/res && cp -r ../wee-docupdate/res/ api/HEAD/res/
mv api/HEAD/api.html api/HEAD/index.html

cd ../wee-docupdate/share/docs/guide/ && make && cd -
rm -rf guide/HEAD/* && cp -r ../wee-docupdate/share/docs/guide/build/* guide/HEAD/

cd ../wee-docupdate/share/docs/manual/ && make && cd -
rm -rf manual/HEAD/* && cp -r ../wee-docupdate/share/docs/manual/build/* manual/HEAD/

cd ../wee-docupdate/share/docs/codingstandards/ && make && cd -
rm -rf codingstandards/* && cp -r ../wee-docupdate/share/docs/codingstandards/build/* codingstandards/
