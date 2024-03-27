#!/bin/bash

read -p "Enter username: " username


if getent passwd | grep -q "^$username:"; then
    uid=$(getent passwd "$username" | cut -d ":" -f 3)
    gid=$(getent passwd "$username" | cut -d ":" -f 4)
    shell=$(getent passwd "$username" | cut -d ":" -f 7) 
    
    echo "User $username exists:"
    echo "UID: $uid"
    echo "GID: $gid"
    echo "Default shell: $shell"
else

    echo "User $username does not exist."
fi

