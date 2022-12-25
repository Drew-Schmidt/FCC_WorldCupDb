#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo $($PSQL "TRUNCATE teams, games")

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $OPPONENT != opponent ]]
  then
    #get team_id
    OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")

    #if not found
    if [[ -z $OPPONENT_ID ]]
    then
      #insert data
      INSERT_OPPONENT=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')"); 
      if [[ $INSERT_OPPONENT == "INSERT 0 1" ]]
      then
        echo Inserted into TEAMS, $OPPONENT
      fi   
      #get new team_id
      OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
    fi
    #get team_id
    WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")

    #if not found
    if [[ -z $WINNER_ID  ]]
    then
      #insert data
      INSERT_WINNER=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')"); 
      if [[ $INSERT_WINNER == "INSERT 0 1" ]]
      then
        echo Inserted into TEAMS, $WINNER
      fi   
      #get new team_id
      WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
    fi
  fi
    if [[ $YEAR != year ]]
    then
    #get game_id
    GAME_ID=$($PSQL "SELECT game_id FROM games WHERE year='$YEAR' AND opponent_id='$OPPONENT_ID' AND winner_id='$WINNER_ID'")
    #if not found
    if [[ -z $GAME_ID ]]
    then
      #insert data
      INSERT_GAME=$($PSQL "INSERT INTO games(year,round,winner_goals,opponent_goals,winner_id,opponent_id) VALUES
      ('$YEAR','$ROUND','$WINNER_GOALS','$OPPONENT_GOALS','$WINNER_ID','$OPPONENT_ID')"); 
      if [[ $INSERT_GAME == "INSERT 0 1" ]]
      then
        echo Inserted into GAMES $ROUND
      fi
      #get new game_id
      GAME_ID=$($PSQL "SELECT game_id FROM games WHERE year='$YEAR' AND opponent_id='$OPPONENT_ID' AND winner_id='$WINNER_ID'")
    fi
  fi
done
