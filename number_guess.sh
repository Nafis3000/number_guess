#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

NUMBER=$((1 + RANDOM % 1000))

echo -e "\nEnter your username:"
read USERNAME

USER=$($PSQL "SELECT name FROM users where name = '$USERNAME'")

if [[ -z $USER ]]
then
  echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."
  INSERT_NEW_USER=$($PSQL "INSERT INTO users(name) VALUES('$USERNAME')")
else
  GAMES=$($PSQL "SELECT count(name) FROM games WHERE name='$USERNAME'")
  BEST=$($PSQL "SELECT min(guesses) FROM games WHERE name='$USERNAME'")
  echo -e "\nWelcome back, $USERNAME! You have played $GAMES games, and your best game took $BEST guesses."
fi

GAME() {
  
  ATTEMPTS=0

  GUESSED=0

  echo -e "\nGuess the secret number between 1 and 1000:"
  
  while [[ $GUESSED = 0 ]]
  do
    read GUESS

    if [[ ! $GUESS =~ ^[0-9]+$ ]]
    then
      echo -e "\nThat is not an integer, guess again:"
    elif [[ $NUMBER = $GUESS ]]
    then
      ATTEMPTS=$(($ATTEMPTS + 1))
      echo -e "\nYou guessed it in $ATTEMPTS tries. The secret number was $NUMBER. Nice job!"

      INSERT_INTO_GAMES=$($PSQL "INSERT INTO games(name, guesses) VALUES('$USERNAME', $ATTEMPTS)")

      GUESSED=1
    
    elif [[ $NUMBER -lt $GUESS ]]
    then
      ATTEMPTS=$(($ATTEMPTS + 1))
      echo -e "\nIt's lower than that, guess again:"
    else
      ATTEMPTS=$(($ATTEMPTS + 1))
      echo -e "\nIt's higher than that, guess again:"
    fi
  done

}

GAME