#!/usr/bin/env bash

echo "--Program Start--"

num_files=$(ls -a | wc -l)
guess=-1

function guessinggame {
    while [[ $guess -ne $num_files ]]
    do
        echo "Type in your guess for the number of files in the directory and then press Enter:"
        read guess

        if [[ $guess -gt $num_files ]]
        then
            echo "You entered $guess. $guess is too high. Please try again."
        elif [[ $guess -lt $num_files ]]
        then
            echo "You entered $guess. $guess is too low. Please try again."
        elif [[ $guess -eq $num_files ]]
        then
            echo "Congratulations! $guess is the correct answer."
        else
            echo "You entered $guess. This is an invalid guess. Please try again with a positive integer value."
            let guess=-1
        fi
    echo
    done
}

echo "Let the games begin..."
echo

guessinggame

echo "--Program End--"
