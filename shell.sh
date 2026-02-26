#!/bin/bash 
<<help 
create a shellcript for creating user
help
echo "user creation has started"

read -p "enter username" username
read -p "enter password" password 

sudo useradd -m "$username"

echo -e "$password\n$password" | sudo passwd "$username"

echo "new suer created succesfully"
