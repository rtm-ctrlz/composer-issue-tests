# Issue

[(Maybe bug?) "build" folder is not copied when mirroring #9600](https://github.com/composer/composer/issues/9600)

# Test case

### Requirements
- docker
- make

### Repository description

Simulating monorepo by having 2 composer projects:
- `test/lib-a` - some package with `build` directory
- `test/project` - project, that requires `test/lib-a`

### Test details

Operations done during test (see [test-in-docker.sh]):
- at `lib-a`: 
  - `composer install`
  - done some build (to add contents for to `build` directory)
- at `project`:
  - `composer install`
  - doing checks for installed files

### Running

```
$ make run
docker run --rm \
    -v "/Users/user/code/composer-issue-tests/lib-a:/src/lib-a:ro" \
    -v "/Users/user/code/composer-issue-tests/project:/src/project:ro" \
    -v "/Users/user/code/composer-issue-tests/test-in-docker.sh:/src/test-in-docker.sh:ro" \
    composer:2.0.8 \
    sh /src/test-in-docker.sh

+ composer diagnose
Checking platform settings: OK
Checking git settings: OK
Checking http connectivity to packagist: OK
Checking https connectivity to packagist: OK
Checking github.com rate limit: OK
Checking disk free space: OK
Checking pubkeys:
Tags Public Key Fingerprint: 57815BA2 7E54DC31 7ECC7CC5 573090D0  87719BA6 8F3BB723 4E5D42D0 84A14642
Dev Public Key Fingerprint: 4AC45767 E5EC2265 2F0C1167 CBBB8A2B  0C708369 153E328C AD90147D AFE50952
OK
Checking composer version: OK
Composer version: 2.0.8
PHP version: 7.4.14
PHP binary path: /usr/local/bin/php
OpenSSL version: OpenSSL 1.1.1i  8 Dec 2020
cURL version: 7.69.1 libz 1.2.11 ssl OpenSSL/1.1.1i
zip: extension present, unzip present

+ cp -a /src/lib-a /src/project /app
+ cd /app/lib-a
+ composer install
Installing dependencies from lock file (including require-dev)
Verifying lock file contents can be installed on current platform.
Nothing to install, update or remove
Generating autoload files
+ composer run build
> date > build/build.log
+ cd /app/project
+ composer install
Installing dependencies from lock file (including require-dev)
Verifying lock file contents can be installed on current platform.
Package operations: 1 install, 0 updates, 0 removals
  - Installing test/lib-a (9600.x-dev): Mirroring from ../lib-a
Generating autoload files
+ set +xe


[TEST INFO] contents of test/lib-a
total 16
drwxr-xr-x 2 root root 4096 Jan 12 12:12 build
-rw-r--r-- 1 root root  193 Jan 12 12:01 composer.json
-rw-r--r-- 1 root root  568 Jan 12 12:01 composer.lock
drwxr-xr-x 3 root root 4096 Jan 12 12:12 vendor
total 4
-rw-r--r-- 1 root root 29 Jan 12 12:12 build.log
-rw-r--r-- 1 root root  0 Jan 12 12:03 dummy.txt


[TEST INFO] contents of project/vendor/test/lib-a
total 16
drwxr-xr-x 2 root root 4096 Jan 12 12:12 build
-rw-r--r-- 1 root root  193 Jan 12 12:12 composer.json
-rw-r--r-- 1 root root  568 Jan 12 12:12 composer.lock
drwxr-xr-x 3 root root 4096 Jan 12 12:12 vendor
total 0
-rw-r--r-- 1 root root 0 Jan 12 12:12 dummy.txt


[TEST INFO] Build date (lib) : Tue Jan 12 12:12:01 UTC 2021
[TEST INFO] Build date (prj) : no build.log found
[TEST INFO] Current date     : Tue Jan 12 12:12:02 UTC 2021
```