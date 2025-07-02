#!/bin/bash

## Author: Deepak Kesarkar
## Date: $(date +%Y-%m-%d)
## Version: 1.0
## Description: This script creates a user based on interactive input.

# Function to create a user
create_user() {
    username=$1
    password=$2

    # Create user with specified username
    sudo useradd -m -s /bin/bash "$username"

    # Set the password for the user
    echo "$username:$password" | sudo chpasswd

    echo "✅ User '$username' created successfully."
}

# Prompt for input
read -p "Enter the username to create: " new_user
read -s -p "Enter password for $new_user: " new_pass
echo

# Call the function
create_user "$new_user" "$new_pass"
