#!/bin/bash

# Check if the service is running   

service=("nginx" "mysql" "ssh")

for service in "${service[@]}"; do
    if systemctl is-active --quiet "$service"; then
        echo "$service is running"
    else
        echo "$service is not running"
    fi
done