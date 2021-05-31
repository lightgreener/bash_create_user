#!/bin/env bash

# create many users as you wish
# create password for each user
#

# create new file called user.info
USER_FILE=./user.info

# create interactive user $@ is the amount of parameter
USER_LIST=$@   

# for USER in user{1..7}; do

for USER in $USER_LIST; do
        if ! id $USER &>/dev/null; then
		PASS=$(echo $RANDOM |md5sum |cut -c 1-8)
		adduser $USER
		echo $PASS |passwd --stdin $USER &>/dev/null
		echo "$USER $PASS" >> $USER_FILE
		echo "$USER create successful"
	else 
		echo "$USER already exists!"

	fi


done



