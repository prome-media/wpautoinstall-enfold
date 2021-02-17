# WP Auto-install Script for Enfold - Promethean Aesthetics
Automated themes and plugins installer script for the enfold based development projects. Used internally for the team projects.

## Components List:
The scripts automates the installation and cleanup of the following components:
- Installs Enfold parent theme
- Installs and activates the Enfold child theme
- Deletes twentytwenty theme
- Deletes twentynineteen theme
- Deletes Akismet plugin
- Deletes Hello Dolly plugin
- Installs and activates the UpdraftPlus plugin
- Installs and activates the WordFence plugin
- Installs and activates the Classic Editor plugin
- Installs and activates the Duplicate Post plugin

## Requirements:
- wget package
- Terminal access - SSH login
- Local by flywheel for local environments https://localwp.com/releases/
## How to use this script:
- Local environments:
    - Create site
    - Right click site's name
    - Select "Open Site Shell"
    - Enter the following command in the terminal window: `wget https://raw.githubusercontent.com/prome-media/wpautoinstall-enfold/master/wpautoinstall-enfold.sh && chmod +x wpautoinstall-enfold.sh && ./wpautoinstall-enfold.sh`

- SiteGround Hosts / Remote Server environments:
    - TBA