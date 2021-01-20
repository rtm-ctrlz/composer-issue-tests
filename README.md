# Issue

[(Maybe bug?) "build" folder is not copied when mirroring #9600](https://github.com/composer/composer/issues/9600)

# Test case

Test how composer reacts to `.gitignore` files while mirroning repositories.

### Requirements
- composer
- make

### Description


#### Files and directories

There are some `.gitignore.dist` files - they are used in tests, but have `.dist` prefix to let git store all files.

##### project

Sample project that uses mirroring with `symlink: false`

##### lib-a

Single `.gitignore`, located at root of the package, contains directory name without slashes.

##### lib-b

Single `.gitignore`, located at root of the package, contains directory name with leading slashe.


##### lib-c

"Copy" of PoP repository, two `.gitignore` files:
- `/.gitignore` - directory name without slashes
- `/static/.gitignore` - directory name with exclamation sign

### Tests

There are 6 tests provided:
- diffrent `.gitignore` setups (3 tests):
  - lib-a
  - lib-b
  - lib-c
- diffrent composer versions:
  - your local
  - PR #9464 patched composer
  
  
#### Running tests

##### with local composer
```bash
$ make local
```

##### with composer
```bash
$ make local PR #9464
```
