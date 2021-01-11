#!/bin/bash
set -ex

LOG_FILE="/src/${HOSTNAME}.log"

echo -e '[TEST INFO] composer diagnose\n' > "$LOG_FILE"
composer diagnose --no-ansi 2>&1 | tee -a "$LOG_FILE"

cp /src/composer.json .

echo -e '\n\n[TEST INFO] composer update\n' >> "$LOG_FILE"
composer update --no-ansi 2>&1 | tee -a "$LOG_FILE"

echo -e "\n\n[TEST INFO] composer require --no-ansi ${REQUIRE_ARGS} defuse/php-encryption\n" >> "$LOG_FILE"
composer require --no-ansi ${REQUIRE_ARGS} defuse/php-encryption 2>&1 | tee -a "$LOG_FILE"