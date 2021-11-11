#!/usr/bin/env bash
filescount=$(ls | wc -l)

function guess_filescount {
	read guess
	if [[ $guess -eq $filescount ]]
	then
		echo "You guessed it right!!"
		echo "yahoooooooooooooooooooo"
		echo "  So we have ..."
		for f in $(ls)
		do
			echo "  - $f and "
		done
		echo "    ... and that was it."
	else
		if [[ $guess -gt $filescount ]]
		then
			echo "There is less... try again and press Enter :"
			guess_filenum
		else
			echo "There is more... try again and press Enter :"
			guess_filenum
		fi
	fi
}
echo "Welcome to the guessing game!"
echo "Guess number of files in current directory and press Enter :"
guess_filescount
