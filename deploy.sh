#!/bin/bash

echo -e "Start building..."
vuepress build .

cd .vuepress/dist
echo "guide.v2fly.org" > CNAME
git init
git add -A
git commit -m "built at $(LANG=en_US date)"
git push -f -v --progress git@github.com:v2fly/v2ray-step-by-step.git master:gh-pages
cd ../
rm -rfv dist/
echo "Done."

