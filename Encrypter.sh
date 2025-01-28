#!/bin/bash
echo "This is a simple Ecnryption/Decryption tool"
echo "What is that you desire :"
choice="Encrypt Decrypt"
select option in $choice; do
	if [ $REPLY = 1 ];then
		echo "You have choosen encryption"
		echo "Please enter the filename"
		read file;
		gpg -c $file
		echo "Your file has been encrypted"
		break

	elif [ $REPLY = 2 ]; then
		echo "You have choosen decryption" 
        	echo "Please enter the filename" 
        	read file; 
        	gpg -d $file
        	echo "Your file has been decrypted"
		break
	else
		echo "That's not a valid argument exiting......"
		break
	fi
done
