#!/usr/bin/env bash

result=0
function validateInput {
	if [[ $userGuessCount -eq $fileCount ]]
	then
		echo "Congratulation!!! $fileCount files in the current directory."
	        result=1
	elif [[ $userGuessCount -gt $fileCount ]]
	then
	        echo "Your guess is too high."
	        result=0
	else
	        echo "Your guess is too low."
	        result=0
	fi
}

while [[ $result -eq 0 ]]
do
	echo "Can you guess how many files are there in this directory"
	read userGuessCount
	fileCount=$(ls -l | grep ^- | wc -l)
	validateInput
done
