--Creating table for players
Create table players(
	player_id VARCHAR(10) NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL, 
	hand VARCHAR NOT NULL,
	country_code VARCHAR NOT NULL,
	PRIMARY KEY (player_id)
	);

--create table for matches
Create table matches(
	loser_age FLOAT NOT NULL,
	loser_id VARCHAR(10) NULL,
	loser_name VARCHAR NOT NULL, 
	loser_rank INT NOT NULL,
	winner_age FLOAT NOT NULL,
	winner_id VARCHAR(10) NULL,
	winner_name VARCHAR NOT NULL,
	winner_rank INT NOT NULL
	);
		
--Still using the tennis_db, write a query that returns the number of WINS for each dominant hand.
--What is the distribution of wins for each dominant hand? 
--HINT: This will require you to join two tables together.		

--To join the two tables(players and matches)
SELECT players.player_id,
		players.hand,
      	matches.winner_id,
		matches.winner_name
FROM players
Left JOIN matches
ON players.player_id = matches.winner_id
Group by winner ;


--For left handed players
select count(hand)
FROM players 
Left JOIN matches
ON players.player_id = matches.winner_id  
where players.hand =('L') and (matches.winner_id=players.player_id);


--For right handed players
select count(hand)
FROM players 
Left JOIN matches
ON players.player_id = matches.winner_id  
where players.hand =('R') and (matches.winner_id=players.player_id);
		
		
		
		
		
		
