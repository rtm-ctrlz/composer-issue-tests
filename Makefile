help:
	@echo 'Available make targets'
	@echo '  Tests:'
	@echo '    local                 - run tests using local composer'
	@echo '    patched               - run tests using patched composer (PR #9464)'
	@echo ''
	@echo '  Support stuff:'
	@echo '    clean                 - cleanup temporary files'
	@echo '    prepare_ignore_files  - create .gitignore for test'
	@echo '    install-composer-9464 - install composer from PR #9464'
	@echo '                            there are some fixes that affects .gitignore handling'
	@echo '    help                  - display this help'

#  BEGIN: Tests

local: clean prepare_ignore_files
	composer -V
	cd project && composer update
	
	find project/vendor/issue-9660 -mindepth 2 | sed -e 's/.*issue-9660//g' | sort
	
patched: clean prepare_ignore_files install-composer-9464
	cd project && \
		../composer-9464/vendor/bin/composer -V && \
		../composer-9464/vendor/bin/composer update
	
	find project/vendor/issue-9660 -mindepth 2 | sed -e 's/.*issue-9660\///g' | sort

#  END: Tests

#  BEGIN: Suppoting stuff 
clean:
	find lib-a lib-b lib-c -type f -name '.gitignore' -delete
	rm -rf project/vendor

# copy files .gitignore.dist -> .gitignore inside libs
prepare_ignore_files:
	find lib-a lib-b lib-c -name .gitignore.dist -exec sh -c 'cp "{}" `dirname "{}"`/.gitignore' ';'
	
composer-9464/vendor/bin/composer:
	cd composer-9464 && composer update

install-composer-9464: composer-9464/vendor/bin/composer
#  END: Suppoting stuff 