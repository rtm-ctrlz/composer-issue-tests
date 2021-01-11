# Issue
[Composer keeps REInstalling Drupal/Core v9.1.2 #9597](https://github.com/composer/composer/issues/9597)

# The test

#### Requirements

- docker
- docker-compose
- make

#### Running

```
make all
```

# Results 

### Conslution

Composer plugin [drupal/core-composer-scaffold](https://packagist.org/packages/drupal/core-composer-scaffold) is installing `drupal/core` to project directory and makes composer think
that `drupal/core` is installed, but if you take a look at `vendor/drupal` diretory you'll see that there is no direcorty for `drupal/core`.

When you using `--no-plugins` option:
 - `scaffolding` isn't working
 - composer see that `drupal/core` is not installed
 - composer installs `drupal/core`
 


### on my machine


<details>
    <summary>noargs.log</summary>

    Checking composer.json: OK
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
    Loading composer repositories with package information
    Updating dependencies
    Nothing to modify in lock file
    Installing dependencies from lock file (including require-dev)
    Nothing to install, update or remove
    Package doctrine/reflection is abandoned, you should avoid using it. Use roave/better-reflection instead.
    Generating autoload files
    Hardening vendor directory with .htaccess and web.config files.
    37 packages you are using are looking for funding.
    Use the `composer fund` command to find out more!
    Cleaning vendor directory.
    Reading ./composer.json
    Loading config file ./composer.json
    Checked CA file /etc/ssl/certs/ca-certificates.crt: valid
    Executing command (/app): git branch -a --no-color --no-abbrev -v
    Executing command (/app): git describe --exact-match --tags
    Executing command (CWD): git --version
    Executing command (/app): git log --pretty="%H" -n1 HEAD --no-show-signature
    Executing command (/app): hg branch
    Executing command (/app): fossil branch list
    Executing command (/app): fossil tag list
    Executing command (/app): svn info --xml
    Failed to initialize global composer: Composer could not find the config file: /tmp/composer.json
    To initialize a project, please create a composer.json file as described in the https://getcomposer.org/ "Getting Started" section
    Reading /app/vendor/composer/installed.json
    Loading plugin Composer\Installers\Plugin
    Loading plugin Drupal\Composer\Plugin\Scaffold\Plugin
    Loading plugin Drupal\Composer\Plugin\ProjectMessage\MessagePlugin
    Loading plugin Drupal\Composer\Plugin\VendorHardening\VendorHardeningPlugin
    Running 2.0.8 (2020-12-03 17:20:38) with PHP 7.4.14 on Linux / 4.19.121-linuxkit
    Downloading https://packages.drupal.org/8/packages.json
    [200] https://packages.drupal.org/8/packages.json
    Writing /tmp/cache/repo/https---packages.drupal.org-8/packages.json into cache
    Downloading https://repo.packagist.org/packages.json
    [200] https://repo.packagist.org/packages.json
    Writing /tmp/cache/repo/https---repo.packagist.org/packages.json into cache
    Reading /tmp/cache/repo/https---repo.packagist.org/provider-defuse~php-encryption.json from cache
    Downloading https://repo.packagist.org/p2/defuse/php-encryption.json if modified
    [304] https://repo.packagist.org/p2/defuse/php-encryption.json
    Using version ^2.2 for defuse/php-encryption
    ./composer.json has been updated
    Reading ./composer.json
    Loading config file ./composer.json
    Executing command (/app): git branch -a --no-color --no-abbrev -v
    Executing command (/app): git describe --exact-match --tags
    Executing command (/app): git log --pretty="%H" -n1 HEAD --no-show-signature
    Executing command (/app): hg branch
    Executing command (/app): fossil branch list
    Executing command (/app): fossil tag list
    Executing command (/app): svn info --xml
    Failed to initialize global composer: Composer could not find the config file: /tmp/composer.json
    To initialize a project, please create a composer.json file as described in the https://getcomposer.org/ "Getting Started" section
    Reading /app/vendor/composer/installed.json
    Loading plugin Composer\Installers\Plugin_composer_tmp0
    Loading plugin Drupal\Composer\Plugin\Scaffold\Plugin_composer_tmp1
    Loading plugin Drupal\Composer\Plugin\ProjectMessage\MessagePlugin_composer_tmp2
    Loading plugin Drupal\Composer\Plugin\VendorHardening\VendorHardeningPlugin_composer_tmp3
    Running composer update defuse/php-encryption
    > command: Drupal\Composer\Plugin\Scaffold\Plugin_composer_tmp1->onCommand
    Reading ./composer.lock
    Loading composer repositories with package information
    Downloading https://packages.drupal.org/8/packages.json
    [200] https://packages.drupal.org/8/packages.json
    Writing /tmp/cache/repo/https---packages.drupal.org-8/packages.json into cache
    Downloading https://repo.packagist.org/packages.json
    [200] https://repo.packagist.org/packages.json
    Writing /tmp/cache/repo/https---repo.packagist.org/packages.json into cache
    Reading /tmp/cache/repo/https---repo.packagist.org/provider-defuse~php-encryption.json from cache
    Downloading https://repo.packagist.org/p2/defuse/php-encryption.json if modified
    [304] https://repo.packagist.org/p2/defuse/php-encryption.json
    Reading /tmp/cache/repo/https---repo.packagist.org/provider-paragonie~random-compat.json from cache
    Downloading https://repo.packagist.org/p2/paragonie/random_compat.json if modified
    [304] https://repo.packagist.org/p2/paragonie/random_compat.json
    Updating dependencies
    Generating rules
    Resolving dependencies through SAT
    Looking at all rules.
    Something's changed, looking at all rules again (pass #1)
    Dependency resolution completed in 0.006 seconds
    Analyzed 144 packages to resolve dependencies
    Analyzed 331 rules to resolve dependencies
    Lock file operations: 2 installs, 0 updates, 0 removals
    Installs: paragonie/random_compat:v9.99.100, defuse/php-encryption:v2.2.1
      - Locking defuse/php-encryption (v2.2.1)
      - Locking paragonie/random_compat (v9.99.100)
    Installing dependencies from lock file (including require-dev)
    Package operations: 2 installs, 0 updates, 0 removals
    Installs: paragonie/random_compat:v9.99.100, defuse/php-encryption:v2.2.1
      - Installing paragonie/random_compat (v9.99.100)
      - Installing defuse/php-encryption (v2.2.1)
    1 package suggestions were added by new dependencies, use `composer suggest` to see details.
    Package doctrine/reflection is abandoned, you should avoid using it. Use roave/better-reflection instead.
    37 packages you are using are looking for funding.
    Use the `composer fund` command to find out more!
</details>

<details>
    <summary>noscripts.log</summary>

    Checking composer.json: OK
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
    Loading composer repositories with package information
    Updating dependencies
    Nothing to modify in lock file
    Installing dependencies from lock file (including require-dev)
    Nothing to install, update or remove
    Package doctrine/reflection is abandoned, you should avoid using it. Use roave/better-reflection instead.
    Generating autoload files
    Hardening vendor directory with .htaccess and web.config files.
    37 packages you are using are looking for funding.
    Use the `composer fund` command to find out more!
    Cleaning vendor directory.
    Reading ./composer.json
    Loading config file ./composer.json
    Checked CA file /etc/ssl/certs/ca-certificates.crt: valid
    Executing command (/app): git branch -a --no-color --no-abbrev -v
    Executing command (/app): git describe --exact-match --tags
    Executing command (CWD): git --version
    Executing command (/app): git log --pretty="%H" -n1 HEAD --no-show-signature
    Executing command (/app): hg branch
    Executing command (/app): fossil branch list
    Executing command (/app): fossil tag list
    Executing command (/app): svn info --xml
    Failed to initialize global composer: Composer could not find the config file: /tmp/composer.json
    To initialize a project, please create a composer.json file as described in the https://getcomposer.org/ "Getting Started" section
    Reading /app/vendor/composer/installed.json
    Loading plugin Composer\Installers\Plugin
    Loading plugin Drupal\Composer\Plugin\Scaffold\Plugin
    Loading plugin Drupal\Composer\Plugin\ProjectMessage\MessagePlugin
    Loading plugin Drupal\Composer\Plugin\VendorHardening\VendorHardeningPlugin
    Running 2.0.8 (2020-12-03 17:20:38) with PHP 7.4.14 on Linux / 4.19.121-linuxkit
    Downloading https://packages.drupal.org/8/packages.json
    [200] https://packages.drupal.org/8/packages.json
    Writing /tmp/cache/repo/https---packages.drupal.org-8/packages.json into cache
    Downloading https://repo.packagist.org/packages.json
    [200] https://repo.packagist.org/packages.json
    Writing /tmp/cache/repo/https---repo.packagist.org/packages.json into cache
    Reading /tmp/cache/repo/https---repo.packagist.org/provider-defuse~php-encryption.json from cache
    Downloading https://repo.packagist.org/p2/defuse/php-encryption.json if modified
    [304] https://repo.packagist.org/p2/defuse/php-encryption.json
    Using version ^2.2 for defuse/php-encryption
    ./composer.json has been updated
    Reading ./composer.json
    Loading config file ./composer.json
    Executing command (/app): git branch -a --no-color --no-abbrev -v
    Executing command (/app): git describe --exact-match --tags
    Executing command (/app): git log --pretty="%H" -n1 HEAD --no-show-signature
    Executing command (/app): hg branch
    Executing command (/app): fossil branch list
    Executing command (/app): fossil tag list
    Executing command (/app): svn info --xml
    Failed to initialize global composer: Composer could not find the config file: /tmp/composer.json
    To initialize a project, please create a composer.json file as described in the https://getcomposer.org/ "Getting Started" section
    Reading /app/vendor/composer/installed.json
    Loading plugin Composer\Installers\Plugin_composer_tmp0
    Loading plugin Drupal\Composer\Plugin\Scaffold\Plugin_composer_tmp1
    Loading plugin Drupal\Composer\Plugin\ProjectMessage\MessagePlugin_composer_tmp2
    Loading plugin Drupal\Composer\Plugin\VendorHardening\VendorHardeningPlugin_composer_tmp3
    Running composer update defuse/php-encryption
    > command: Drupal\Composer\Plugin\Scaffold\Plugin_composer_tmp1->onCommand
    Reading ./composer.lock
    Loading composer repositories with package information
    Downloading https://packages.drupal.org/8/packages.json
    [200] https://packages.drupal.org/8/packages.json
    Writing /tmp/cache/repo/https---packages.drupal.org-8/packages.json into cache
    Downloading https://repo.packagist.org/packages.json
    [200] https://repo.packagist.org/packages.json
    Writing /tmp/cache/repo/https---repo.packagist.org/packages.json into cache
    Reading /tmp/cache/repo/https---repo.packagist.org/provider-defuse~php-encryption.json from cache
    Downloading https://repo.packagist.org/p2/defuse/php-encryption.json if modified
    [304] https://repo.packagist.org/p2/defuse/php-encryption.json
    Reading /tmp/cache/repo/https---repo.packagist.org/provider-paragonie~random-compat.json from cache
    Downloading https://repo.packagist.org/p2/paragonie/random_compat.json if modified
    [304] https://repo.packagist.org/p2/paragonie/random_compat.json
    Updating dependencies
    Generating rules
    Resolving dependencies through SAT
    Looking at all rules.
    Something's changed, looking at all rules again (pass #1)
    Dependency resolution completed in 0.002 seconds
    Analyzed 144 packages to resolve dependencies
    Analyzed 331 rules to resolve dependencies
    Lock file operations: 2 installs, 0 updates, 0 removals
    Installs: paragonie/random_compat:v9.99.100, defuse/php-encryption:v2.2.1
      - Locking defuse/php-encryption (v2.2.1)
      - Locking paragonie/random_compat (v9.99.100)
    Installing dependencies from lock file (including require-dev)
    Package operations: 2 installs, 0 updates, 0 removals
    Installs: paragonie/random_compat:v9.99.100, defuse/php-encryption:v2.2.1
      - Installing paragonie/random_compat (v9.99.100)
      - Installing defuse/php-encryption (v2.2.1)
    1 package suggestions were added by new dependencies, use `composer suggest` to see details.
    Package doctrine/reflection is abandoned, you should avoid using it. Use roave/better-reflection instead.
    37 packages you are using are looking for funding.
    Use the `composer fund` command to find out more!
</details>


<details>
    <summary>noplugins.log</summary>

    Checking composer.json: OK
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
    Loading composer repositories with package information
    Updating dependencies
    Nothing to modify in lock file
    Installing dependencies from lock file (including require-dev)
    Nothing to install, update or remove
    Package doctrine/reflection is abandoned, you should avoid using it. Use roave/better-reflection instead.
    Generating autoload files
    Hardening vendor directory with .htaccess and web.config files.
    37 packages you are using are looking for funding.
    Use the `composer fund` command to find out more!
    Cleaning vendor directory.
    Running 2.0.8 (2020-12-03 17:20:38) with PHP 7.4.14 on Linux / 4.19.121-linuxkit
    Reading ./composer.json
    Loading config file ./composer.json
    Checked CA file /etc/ssl/certs/ca-certificates.crt: valid
    Executing command (/app): git branch -a --no-color --no-abbrev -v
    Executing command (/app): git describe --exact-match --tags
    Executing command (CWD): git --version
    Executing command (/app): git log --pretty="%H" -n1 HEAD --no-show-signature
    Executing command (/app): hg branch
    Executing command (/app): fossil branch list
    Executing command (/app): fossil tag list
    Executing command (/app): svn info --xml
    Failed to initialize global composer: Composer could not find the config file: /tmp/composer.json
    To initialize a project, please create a composer.json file as described in the https://getcomposer.org/ "Getting Started" section
    Reading /app/vendor/composer/installed.json
    Downloading https://packages.drupal.org/8/packages.json
    [200] https://packages.drupal.org/8/packages.json
    Writing /tmp/cache/repo/https---packages.drupal.org-8/packages.json into cache
    Downloading https://repo.packagist.org/packages.json
    [200] https://repo.packagist.org/packages.json
    Writing /tmp/cache/repo/https---repo.packagist.org/packages.json into cache
    Reading /tmp/cache/repo/https---repo.packagist.org/provider-defuse~php-encryption.json from cache
    Downloading https://repo.packagist.org/p2/defuse/php-encryption.json if modified
    [304] https://repo.packagist.org/p2/defuse/php-encryption.json
    Using version ^2.2 for defuse/php-encryption
    ./composer.json has been updated
    Reading ./composer.json
    Loading config file ./composer.json
    Executing command (/app): git branch -a --no-color --no-abbrev -v
    Executing command (/app): git describe --exact-match --tags
    Executing command (/app): git log --pretty="%H" -n1 HEAD --no-show-signature
    Executing command (/app): hg branch
    Executing command (/app): fossil branch list
    Executing command (/app): fossil tag list
    Executing command (/app): svn info --xml
    Failed to initialize global composer: Composer could not find the config file: /tmp/composer.json
    To initialize a project, please create a composer.json file as described in the https://getcomposer.org/ "Getting Started" section
    Reading /app/vendor/composer/installed.json
    Running composer update defuse/php-encryption
    Reading ./composer.lock
    Loading composer repositories with package information
    Downloading https://packages.drupal.org/8/packages.json
    [200] https://packages.drupal.org/8/packages.json
    Writing /tmp/cache/repo/https---packages.drupal.org-8/packages.json into cache
    Downloading https://repo.packagist.org/packages.json
    [200] https://repo.packagist.org/packages.json
    Writing /tmp/cache/repo/https---repo.packagist.org/packages.json into cache
    Reading /tmp/cache/repo/https---repo.packagist.org/provider-defuse~php-encryption.json from cache
    Downloading https://repo.packagist.org/p2/defuse/php-encryption.json if modified
    [304] https://repo.packagist.org/p2/defuse/php-encryption.json
    Reading /tmp/cache/repo/https---repo.packagist.org/provider-paragonie~random-compat.json from cache
    Downloading https://repo.packagist.org/p2/paragonie/random_compat.json if modified
    [304] https://repo.packagist.org/p2/paragonie/random_compat.json
    Updating dependencies
    Generating rules
    Resolving dependencies through SAT
    Looking at all rules.
    Something's changed, looking at all rules again (pass #1)
    Dependency resolution completed in 0.002 seconds
    Analyzed 144 packages to resolve dependencies
    Analyzed 331 rules to resolve dependencies
    Lock file operations: 2 installs, 0 updates, 0 removals
    Installs: paragonie/random_compat:v9.99.100, defuse/php-encryption:v2.2.1
      - Locking defuse/php-encryption (v2.2.1)
      - Locking paragonie/random_compat (v9.99.100)
    Installing dependencies from lock file (including require-dev)
    Package operations: 3 installs, 0 updates, 0 removals
    Installs: paragonie/random_compat:v9.99.100, defuse/php-encryption:v2.2.1, drupal/core:9.1.2
      - Installing paragonie/random_compat (v9.99.100)
      - Installing defuse/php-encryption (v2.2.1)
      - Installing drupal/core (9.1.2)
    1 package suggestions were added by new dependencies, use `composer suggest` to see details.
    Package doctrine/reflection is abandoned, you should avoid using it. Use roave/better-reflection instead.
    37 packages you are using are looking for funding.
    Use the `composer fund` command to find out more!
</details>


<details>
    <summary>noplugins_noscripts.log</summary>

    Checking composer.json: OK
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
    Loading composer repositories with package information
    Updating dependencies
    Nothing to modify in lock file
    Installing dependencies from lock file (including require-dev)
    Nothing to install, update or remove
    Package doctrine/reflection is abandoned, you should avoid using it. Use roave/better-reflection instead.
    Generating autoload files
    Hardening vendor directory with .htaccess and web.config files.
    37 packages you are using are looking for funding.
    Use the `composer fund` command to find out more!
    Cleaning vendor directory.
    Running 2.0.8 (2020-12-03 17:20:38) with PHP 7.4.14 on Linux / 4.19.121-linuxkit
    Reading ./composer.json
    Loading config file ./composer.json
    Checked CA file /etc/ssl/certs/ca-certificates.crt: valid
    Executing command (/app): git branch -a --no-color --no-abbrev -v
    Executing command (/app): git describe --exact-match --tags
    Executing command (CWD): git --version
    Executing command (/app): git log --pretty="%H" -n1 HEAD --no-show-signature
    Executing command (/app): hg branch
    Executing command (/app): fossil branch list
    Executing command (/app): fossil tag list
    Executing command (/app): svn info --xml
    Failed to initialize global composer: Composer could not find the config file: /tmp/composer.json
    To initialize a project, please create a composer.json file as described in the https://getcomposer.org/ "Getting Started" section
    Reading /app/vendor/composer/installed.json
    Downloading https://packages.drupal.org/8/packages.json
    [200] https://packages.drupal.org/8/packages.json
    Writing /tmp/cache/repo/https---packages.drupal.org-8/packages.json into cache
    Downloading https://repo.packagist.org/packages.json
    [200] https://repo.packagist.org/packages.json
    Writing /tmp/cache/repo/https---repo.packagist.org/packages.json into cache
    Reading /tmp/cache/repo/https---repo.packagist.org/provider-defuse~php-encryption.json from cache
    Downloading https://repo.packagist.org/p2/defuse/php-encryption.json if modified
    [304] https://repo.packagist.org/p2/defuse/php-encryption.json
    Using version ^2.2 for defuse/php-encryption
    ./composer.json has been updated
    Reading ./composer.json
    Loading config file ./composer.json
    Executing command (/app): git branch -a --no-color --no-abbrev -v
    Executing command (/app): git describe --exact-match --tags
    Executing command (/app): git log --pretty="%H" -n1 HEAD --no-show-signature
    Executing command (/app): hg branch
    Executing command (/app): fossil branch list
    Executing command (/app): fossil tag list
    Executing command (/app): svn info --xml
    Failed to initialize global composer: Composer could not find the config file: /tmp/composer.json
    To initialize a project, please create a composer.json file as described in the https://getcomposer.org/ "Getting Started" section
    Reading /app/vendor/composer/installed.json
    Running composer update defuse/php-encryption
    Reading ./composer.lock
    Loading composer repositories with package information
    Downloading https://packages.drupal.org/8/packages.json
    [200] https://packages.drupal.org/8/packages.json
    Writing /tmp/cache/repo/https---packages.drupal.org-8/packages.json into cache
    Downloading https://repo.packagist.org/packages.json
    [200] https://repo.packagist.org/packages.json
    Writing /tmp/cache/repo/https---repo.packagist.org/packages.json into cache
    Reading /tmp/cache/repo/https---repo.packagist.org/provider-defuse~php-encryption.json from cache
    Downloading https://repo.packagist.org/p2/defuse/php-encryption.json if modified
    [304] https://repo.packagist.org/p2/defuse/php-encryption.json
    Reading /tmp/cache/repo/https---repo.packagist.org/provider-paragonie~random-compat.json from cache
    Downloading https://repo.packagist.org/p2/paragonie/random_compat.json if modified
    [304] https://repo.packagist.org/p2/paragonie/random_compat.json
    Updating dependencies
    Generating rules
    Resolving dependencies through SAT
    Looking at all rules.
    Something's changed, looking at all rules again (pass #1)
    Dependency resolution completed in 0.007 seconds
    Analyzed 144 packages to resolve dependencies
    Analyzed 331 rules to resolve dependencies
    Lock file operations: 2 installs, 0 updates, 0 removals
    Installs: paragonie/random_compat:v9.99.100, defuse/php-encryption:v2.2.1
      - Locking defuse/php-encryption (v2.2.1)
      - Locking paragonie/random_compat (v9.99.100)
    Installing dependencies from lock file (including require-dev)
    Package operations: 3 installs, 0 updates, 0 removals
    Installs: paragonie/random_compat:v9.99.100, defuse/php-encryption:v2.2.1, drupal/core:9.1.2
      - Installing paragonie/random_compat (v9.99.100)
      - Installing defuse/php-encryption (v2.2.1)
      - Installing drupal/core (9.1.2)
    1 package suggestions were added by new dependencies, use `composer suggest` to see details.
    Package doctrine/reflection is abandoned, you should avoid using it. Use roave/better-reflection instead.
    37 packages you are using are looking for funding.
    Use the `composer fund` command to find out more!

</details>