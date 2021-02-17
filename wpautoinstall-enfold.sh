#!/bin/bash
wp theme install https://github.com/prome-media/wpautoinstall-enfold/raw/main/enfold.zip
wp theme install https://kriesi.at/documentation/enfold/wp-content/uploads/sites/22/2020/11/enfold-child.zip --activate
wp theme delete twentynineteen
wp theme delete twentytwenty
wp plugin delete akismet
wp plugin delete hello
wp plugin install updraftplus --activate
wp plugin install wordfence --activate
wp plugin install classic-editor --activate
wp plugin install duplicate-post --activate