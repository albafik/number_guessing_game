#! /bin/bash

#CREATE_DB=$($PSQL "CREATE DATABASE number_guess;")
PSQL="psql --username=freecodecamp --dbname=number_guess -c"

# CREATE_PLAYERS=$($PSQL "CREATE TABLE players(player_id SERIAL PRIMARY KEY, username VARCHAR(22) NOT NULL);")
# CREATE_GAMES=$($PSQL "CREATE TABLE games(game_id SERIAL PRIMARY KEY, guesses INT NOT NULL, player_id INT NOT NULL);")
# FOREIGN_KEY=$($PSQL "ALTER TABLE games ADD FOREIGN KEY(player_id) REFERENCES players(player_id);")
#UNIQUE_NAME=$($PSQL "ALTER TABLE players ADD CONSTRAINT unique_name UNIQUE(username);")

