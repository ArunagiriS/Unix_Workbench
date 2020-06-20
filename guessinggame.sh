#!/usr/bin/env bash

result=false
while [[ $result -eq true ]]
do
	echo "Can you guess how many files are there in this directory"
	read userGuessCount
	ls > fileList.txt
	fileCount=$(cat fileList.txt | wc -l)
	validateInput
done
function validateInput {
	if [[ $userGuessCount -eq $fileCount ]]
	then 
		echo "Congratulation!!! $fileCount files in the current directory."
		result=true 
	elif [[ $userGuessCount -gt $fileCount ]]
	then
		echo "Your guess is too high."
	else
		echo "Your guess is too low."
	fi
}
