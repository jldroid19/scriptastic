#!/bin/bash

# Remove Virtual Host
sudo rm -rf /var/www/scriptastic

# Uninstall PHP and Apache
sudo apt remove --purge php libapache2-mod-php apache2 -y

# Remove firewall rule
sudo ufw delete allow in "Apache"

# Cleanup completed
echo "Cleanup completed."