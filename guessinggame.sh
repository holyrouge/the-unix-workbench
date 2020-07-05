#!/usr/bin/env bash

echo "--Program Start--"

echo "Type in the number of files in the directory and then press Enter:"
read response

guess=-1

function guessinggame {
    while [[ $guess -ne $response ]]
    do
        echo "Type in your guess for the number of files in the directory and then press Enter:"
        read guess

        if [[ $guess -gt $response ]]
        then
            echo "You entered $guess. $guess is too high. Please try again."
        elif [[ $guess -lt $response ]]
        then
            echo "You entered $guess. $guess is too low. Please try again."
        elif [[ $guess -eq $response ]]
        then
            echo "Congratulations! $guess is the correct answer."
        else
            echo "You entered $guess. This is an invalid guess. Please try again."
        fi
    echo
    done
}

echo "Let the games begin..."
echo

guessinggame

echo "--Program End--"
