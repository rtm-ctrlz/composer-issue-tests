#!/bin/sh

# add fail-fast and debug commands
set -ex

cp -a /src/lib-a /src/project /app

cd /app/lib-a

composer install
composer run build

cd /app/project

composer install

set +x

echo -e '\n'
echo '[TEST INFO] contenst of vendor/test/lib-a'
ls -l vendor/test/lib-a
ls -l vendor/test/lib-a/build

echo -en '\n\n[TEST INFO] Build date  : '; cat vendor/test/lib-a/build/build.log
echo -n '[TEST INFO] Current date: '; date

echo -e '\n[TEST INFO] build dates should differ for at most 1-2 seconds'
