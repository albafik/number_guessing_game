#! /bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess --tuples-only -c"


NUM_RANDOM=$(( (RANDOM % 1000) + 1 ))

echo "Enter your username:"
read USERNAME

GET_GAMERINFO=$($PSQL "SELECT username, MIN(guesses), COUNT(*) AS games_played FROM players INNER JOIN games USING(player_id) WHERE username = '$USERNAME' GROUP BY username;")
ATTEMPS=1
echo $NUM_RANDOM
#!/bin/bash

# Si no se encuentra información previa del jugador
if [[ -z $GET_GAMERINFO ]]
then
  echo "Welcome, $USERNAME! It looks like this is your first time here."
  INSERT_NEW_PLAYER=$($PSQL "INSERT INTO players(username) VALUES('$USERNAME');")
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
  PLAYER_ID=$($PSQL "SELECT player_id FROM Players WHERE username = '$USERNAME';")
  INSERT_NEW_GAME=$($PSQL "INSERT INTO games(guesses, player_id) VALUES ($ATTEMPS, $PLAYER_ID);")
  echo "You guessed it in $ATTEMPS tries. The secret number was $SECRET_NUMBER. Nice job!"
else
  echo "$GET_GAMERINFO" | while IFS="|" read NAME BEST_GAME GAMES_PLAYED
  do
    NAME_FORMATTED=$(echo $NAME | sed -E 's/^ *| *$//')
    BEST_FORMATTED=$(echo $BEST_GAME | sed -E 's/^ *| *$//')
    N_GAMES_FORMATTED=$(echo $GAMES_PLAYED | sed -E 's/^ *| *$//')
    echo "Welcome back, $NAME_FORMATTED! You have played $N_GAMES_FORMATTED games, and your best game took $BEST_FORMATTED guesses."
  done
fi
