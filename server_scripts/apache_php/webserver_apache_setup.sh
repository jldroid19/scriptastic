#!/bin/bash


# Define color codes
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m'  # No Color

echo -e "${GREEN}"
        cat << "EOF"
                                             
                               
//    __   ____   __    ___  _  _  ____    _   ____  _  _  ____ 
//   / _\ (  _ \ / _\  / __)/ )( \(  __)  / ) (  _ \/ )( \(  _ \
//  /    \ ) __//    \( (__ ) __ ( ) _)  / /   ) __/) __ ( ) __/
//  \_/\_/(__)  \_/\_/ \___)\_)(_/(____)(_/   (__)  \_)(_/(__)       

EOF

# Welcome message
echo "Welcome to Scriptastic 
\\ This tool can only do a few things!
\\ However it does them great!"
echo "----------------------------------------"
echo -e "${NC}Let's get started!"
echo "----------------------------------------"
# Prompt the user with options
echo "Server Setup Script"
echo "Please choose an option:"
echo "1. Setup php and apache"
echo "2. "
echo "3. "
echo "4. "
echo "5. "
read -p "Enter your choice (1-5): " choice

# Execute secondary script based on the chosen option
case $choice in
    1)
        echo "Server Setup Script..."
        ./server_scripts/server_setup.sh
        ;;
    # 2)
    #     echo "Executing Apache / PHP server script..."
    #     ./server_scripts/webserver_apache_setup.sh
    #     ;;
    *)
        echo "Invalid choice. Exiting..."
        exit 1
        ;;
esac

# Exit the script
exit 0
```

# Welcome message
echo -e "${NC}This will install Apache and PHP."

read -p "Press Enter to accept the terms and continue 
with the installation, or Ctrl+c to exit..."

sudo apt update -y
sudo apt install apache2 -y
sudo ufw allow in "Apache"

sudo apt install php libapache2-mod-php -y

# Create a Virtual Host for the website
sudo mkdir /var/www/scriptastic
sudo chown -R $USER:$USER /var/www/scriptastic



echo "Hello from Apache Web Server"