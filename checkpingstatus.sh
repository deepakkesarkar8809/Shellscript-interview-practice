#!/bin/bash

server=("8.8.8.8" "www.google.com" "localhost" "10.2.3.4")

for server in "${server[@]}"; do
        if ping -c 1 "$server" &>/dev/null; then
            echo "$server is reachable"
        else
            echo "$server is not reachable"
        fi
done
# End of script