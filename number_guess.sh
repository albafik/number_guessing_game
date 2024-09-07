#! /bin/bash

PSQL="psql --username=freecodecamp --dbname=  --tuple-only -c"

NUM_RANDOM=$(( (RANDOM % 1000) + 1 ))

echo "Enter your username:"
read USERNAME

GET_GAMERINFO=$()
ATTEMPS=0
echo $NUM_RANDOM
#!/bin/bash

# Si no se encuentra información previa del jugador
if [[ -z $GET_GAMERINFO ]]
then
  echo "Welcome, $USERNAME! It looks like this is your first time here."
  echo "Guess the secret number between 1 and 1000:"
  read SECRET_NUMBER
  while [[ $SECRET_NUMBER != $NUM_RANDOM ]]
  do
    if [[ ! $SECRET_NUMBER =~ ^[0-9]+$ ]]
    then
      echo "That is not an integer, guess again:"
    else
      ((ATTEMPS++))
      if (( SECRET_NUMBER > NUM_RANDOM ))
      then
        echo "It's lower than that, guess again:"
      elif (( SECRET_NUMBER < NUM_RANDOM ))
      then
        echo "It's higher than that, guess again:"
      fi
    fi
    read SECRET_NUMBER
  done
  echo "You guessed it in $ATTEMPS tries. The secret number was $SECRET_NUMBER. Nice job!"
fi
