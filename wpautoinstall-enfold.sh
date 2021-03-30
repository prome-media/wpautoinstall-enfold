#!/bin/bash

# Script Init and Basic Plugins/Themes Installation
read -r -p "Do you want to start the basic installation process? [y/N] " response

	if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]; then
        wp theme install https://github.com/prome-media/wpautoinstall-enfold/raw/main/enfold.zip
        wp theme install https://kriesi.at/documentation/enfold/wp-content/uploads/sites/22/2020/11/enfold-child.zip --activate
        wp theme delete twentynineteen
        wp theme delete twentytwenty
        wp theme delete twentytwentyone
        wp plugin delete akismet
        wp plugin delete hello
        wp plugin install updraftplus --activate
        wp plugin install wordfence --activate
        wp plugin install duplicate-post --activate
        wp plugin install sg-cachepress --activate
    fi

# SG Optimizer Auto Configuration of Settings
read -r -p "Do you want to auto configure the SG Optimizer settings for this website? [y/N] " response

    if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]; then
        wp sg settings import -hash=eyJzdXBlcmNhY2hlcl9wZXJtaXNzaW9ucyI6MSwiZW5hYmxlX2NhY2hlIjoxLCJhdXRvZmx1c2hfY2FjaGUiOjEsImVuYWJsZV9tZW1jYWNoZWQiOjEsInNzbF9lbmFibGVkIjoxLCJvcHRpbWl6ZV9odG1sIjoxLCJvcHRpbWl6ZV9qYXZhc2NyaXB0IjoxLCJvcHRpbWl6ZV9qYXZhc2NyaXB0X2FzeW5jIjoxLCJvcHRpbWl6ZV9jc3MiOjEsImNvbWJpbmVfY3NzIjowLCJyZW1vdmVfcXVlcnlfc3RyaW5ncyI6MSwiZGlzYWJsZV9lbW9qaXMiOjEsIm9wdGltaXplX2ltYWdlcyI6MSwiZW5hYmxlX2d6aXBfY29tcHJlc3Npb24iOjAsImVuYWJsZV9icm93c2VyX2NhY2hpbmciOjAsImxhenlsb2FkX21vYmlsZSI6MSwiYXN5bmNfamF2YXNjcmlwdF9leGNsdWRlIjpbImpxdWVyeS1taWdyYXRlIiwianF1ZXJ5IiwianF1ZXJ5LWNvcmUiXSwiZXhjbHVkZWRfbGF6eV9sb2FkX2NsYXNzZXMiOlsic2tpcC1sYXp5Il0sImxhenlsb2FkX2lmcmFtZXMiOjEsImxhenlsb2FkX3ZpZGVvcyI6MSwiY29tYmluZV9qYXZhc2NyaXB0IjowLCJvcHRpbWl6ZV93ZWJfZm9udHMiOjEsImxhenlsb2FkX2ltYWdlcyI6MSwiZml4X2luc2VjdXJlX2NvbnRlbnQiOjEsImRhdGFiYXNlX29wdGltaXphdGlvbiI6MSwibWluaWZ5X2phdmFzY3JpcHRfZXhjbHVkZSI6W119
    fi

# Media Cloud Plugin Installation and Activation
read -r -p "Are you planning to use cloud storage for the media library? [y/N] " response

    if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]; then
        wp plugin install ilab-media-tools --activate
    fi

# Update permalinks structure
read -r -p "Do you want to update the permalink structure? [y/N] " response

    if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]; then
        wp rewrite structure '/%postname%'
    fi

# Script Cleanup
read -r -p " All done! Do you want to delete the installation script? [y/N] " response

    if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]; then
        clear
        rm $0
    fi