#!/bin/bash
git clone -b beta https://github.com/ftctechnh/ftc_app.git official
(cd ../official; git pull origin master)
rsync -arv --exclude-from=.exclusions.txt ./official/ ./
rm -rf ./official
