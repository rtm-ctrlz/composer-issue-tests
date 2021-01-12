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


[TEST INFO] contenst of vendor/test/lib-a
+ set +x
total 16
drwxr-xr-x 2 root root 4096 Jan 12 11:09 build
-rw-r--r-- 1 root root  193 Jan 12 11:09 composer.json
-rw-r--r-- 1 root root  568 Jan 12 11:09 composer.lock
drwxr-xr-x 3 root root 4096 Jan 12 11:09 vendor
total 4
-rw-r--r-- 1 root root 29 Jan 12 11:09 build.log


[TEST INFO] Build date  : Tue Jan 12 11:09:59 UTC 2021
[TEST INFO] Current date: Tue Jan 12 11:09:59 UTC 2021

[TEST INFO] build dates should differ for at most 1-2 seconds
```