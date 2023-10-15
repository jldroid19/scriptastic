#!/bin/bash

# Update and upgrade
# sudo apt-get update -y
# sudo apt-get upgrade -y

# Define color codes
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m'  # No Color

echo -e "${GREEN}"
        cat << "EOF"
                                             
//    _           _                
//   /_/  _   _  /_` _  _   _  _  _
//  / /  /_/ /_/._/ /_'/ |//_'/ _\ 
//      /   /                      

EOF

# Welcome message
echo -e "${NC}Welcome to Scriptastic Server Setup!"

# Prompt the user with options
echo "Server Setup Script"
echo "Please choose an option:"
echo "1. API Server (Flask API)"
echo "2. Web Server (Apache/PHP)"
echo "3. Docker Host (Docker CE))"
echo "4. File Transfer (SFTP w/ Ngrok)"
echo "5. Option 3"
read -p "Enter your choice (1-5): " choice

# Execute secondary script based on the chosen option
case $choice in
    1)
        echo "Setting up Web Server..."
        ./server_scripts/webserver_pysetup.sh
        ;;
    2)
        echo "Executing Apache / PHP server script..."
        ./server_scripts/webserver_apache_setup.sh
        ;;
    3)
        echo "Executing Option 3 script..."
        # Add your commands for Option 3 here
        ;;

    4)
        echo "Executing File Transfer script..."
        
        ;;
    5)
        echo "Executing Option 5 script..."
        # Add your commands for Option 5 here
        ;;
    *)
        echo "Invalid choice. Exiting..."
        exit 1
        ;;
esac

# Exit the script
exit 0
```