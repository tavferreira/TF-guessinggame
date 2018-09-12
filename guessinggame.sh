#!/usr/bin/env bash
# File: guessinggame.sh

function total {
	total=$(ls -1 --file-type | grep -v '/$' | wc -l)
}
total

echo "How many files are in the current directory?"
read response

while [[ $response -ne $total ]]
do
if [[ $response -gt $total ]]
then
	echo "Your guess is too high, please try again!"
	read response
elif [[ $response -lt $total ]]
then
	echo "Your guess is too low, please try again!"
	read response
fi
done

echo "Congratulations! You got it!"

