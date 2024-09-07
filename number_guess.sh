#! /bin/bash

PSQL="psql --username=freecodecamp --dbname=  --tuple-only -c"

NUM_RANDOM=$RANDOM

echo "Enter your username:"
read USERNAME

GET_GAMERINFO=$()

if [[ -z $GET_GAMERINFO ]]
then
  echo "Welcome, $USERNAME! It looks like this is your first time here."
  echo "Guess the secret number between 1 adn 1000:"
  input SECRET_NUMBER
fi