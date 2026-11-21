#!/usr/bin/env bash


echo "Usernames and source ip for failed logins"

#need to add if else because 2 variations of line

grep -i "failed password" "$1" auth.log | grep -wE "root|admin|liam" | awk '{ 
	if ($9 == "invalid")
		print $11, $13;

	else 
		print $9, $11;
 }'

 
