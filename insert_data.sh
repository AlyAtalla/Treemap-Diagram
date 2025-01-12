#!/bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

# Clear existing data in tables
echo "Truncating tables..."
$PSQL "TRUNCATE games, teams RESTART IDENTITY;"

# Populate teams table
echo "Populating teams table..."
cat games.csv | tail -n +2 | cut -d ',' -f 3,4 | tr ',' '\n' | sort | uniq | while read -r TEAM
do
  if [[ -n "$TEAM" ]]; then
    INSERT_TEAM_RESULT=$($PSQL "INSERT INTO teams (name) VALUES ('$TEAM') ON CONFLICT (name) DO NOTHING;")
    if [[ $INSERT_TEAM_RESULT == "INSERT 0 1" ]]; then
      echo "Inserted team: $TEAM"
    fi
  fi
done

# Populate games table
echo "Populating games table..."
cat games.csv | tail -n +2 | while IFS=',' read -r YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  # Get winner_id
  WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER';")

  # Get opponent_id
  OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT';")

  # Insert game
  INSERT_GAME_RESULT=$($PSQL "
    INSERT INTO games (year, round, winner_id, opponent_id, winner_goals, opponent_goals)
    VALUES ($YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS);
  ")

  if [[ $INSERT_GAME_RESULT == "INSERT 0 1" ]]; then
    echo "Inserted game: $YEAR $ROUND ($WINNER vs $OPPONENT)"
  fi
done
