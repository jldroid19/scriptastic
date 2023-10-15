#!/bin/bash

# Update and upgrade
# sudo apt-get update -y
# sudo apt-get upgrade -y

# Define color codes
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
NC='\033[0m'  # No Color

echo -e "${GREEN}"
        cat << "EOF"
                                             
                               
 (                                           
 )\ )                   )           )        
(()/(    (  (        ( /(   )    ( /((       
 /(_)) ( )( )\ `  )  )\()| /( (  )\())\  (   
(_))   )(()((_)/(/( (_))/)(_)))\(_))((_) )\  
/ __| ((_|(_|_|(_)_\| |_((_)_((_) |_ (_)((_) 
\__ \/ _| '_| | '_ \)  _/ _` (_-<  _|| / _|  
|___/\__|_| |_| .__/ \__\__,_/__/\__||_\__|  
              |_|                            


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
echo "1. Configure a Server"
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
    # 3)
    #     echo "Executing Option 3 script..."
    #     # Add your commands for Option 3 here
    #     ;;

    # 4)
    #     echo "Executing File Transfer script..."
        
    #     ;;
    # 5)
    #     echo "Executing Option 5 script..."
    #     # Add your commands for Option 5 here
    #     ;;
    *)
        echo "Invalid choice. Exiting..."
        exit 1
        ;;
esac

# Exit the script
exit 0
```