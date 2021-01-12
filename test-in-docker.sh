#!/bin/sh

# add fail-fast and debug commands
set -ex

composer diagnose

cp -a /src/lib-a /src/project /app

cd /app/lib-a

composer install
composer run build

cd /app/project

composer install

set +xe

cd /app

echo -e '\n'
echo '[TEST INFO] contents of test/lib-a'
ls -l lib-a
ls -l lib-a/build

echo -e '\n'
echo '[TEST INFO] contents of project/vendor/test/lib-a'
ls -l project/vendor/test/lib-a
ls -l project/vendor/test/lib-a/build

echo -en '\n\n[TEST INFO] Build date (lib) : '; cat lib-a/build/build.log || echo 'no build.log found'
echo -n '[TEST INFO] Build date (prj) : '; cat project/vendor/test/lib-a/build/build.log 2>/dev/null || echo 'no build.log found'
echo -n '[TEST INFO] Current date     : '; date
