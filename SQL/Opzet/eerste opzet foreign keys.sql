USE FOOTBALL_MANAGER_DATABASE
GO

-- Primary keys
ALTER TABLE Benched
	ADD CONSTRAINT pk_benched					PRIMARY KEY CLUSTERED (PersonID, MatchID)

ALTER TABLE TeamLayout
	ADD CONSTRAINT pk_club_layout				PRIMARY KEY CLUSTERED (PersonId, TeamID, Startdate)

ALTER TABLE FootballTeam
	ADD CONSTRAINT pk_football_team				PRIMARY KEY CLUSTERED (TeamID)

ALTER TABLE [Event]
	ADD CONSTRAINT pk_event						PRIMARY KEY CLUSTERED (EventID, MatchID)

ALTER TABLE PossibleEvents
	ADD CONSTRAINT pk_possible_events			PRIMARY KEY CLUSTERED ([Name])

ALTER TABLE [Match]
	ADD CONSTRAINT pk_match						PRIMARY KEY CLUSTERED (MatchID)

ALTER TABLE League
	ADD CONSTRAINT pk_league					PRIMARY KEY CLUSTERED ([Name])

ALTER TABLE LeagueLayout
	ADD CONSTRAINT pk_league_layout				PRIMARY KEY CLUSTERED (League, teamID)

ALTER TABLE LineUp
	ADD CONSTRAINT pk_line_up					PRIMARY KEY CLUSTERED (MatchID, PersonID, Position)

ALTER TABLE PossiblePositions
	ADD CONSTRAINT pk_possible_positions		PRIMARY KEY CLUSTERED ([Name])

ALTER TABLE [Location]
	ADD CONSTRAINT pk_location					PRIMARY KEY CLUSTERED ([Address], Postalcode)

ALTER TABLE Person
	ADD CONSTRAINT pk_person					PRIMARY KEY CLUSTERED (PersonID)

ALTER TABLE Official
	ADD CONSTRAINT pk_official					PRIMARY KEY CLUSTERED (PersonID, MatchID)

ALTER TABLE TypeOfOfficial
	ADD CONSTRAINT pk_type_of_official			PRIMARY KEY CLUSTERED ([Type])

ALTER TABLE Substitution
	ADD CONSTRAINT pk_substitution				PRIMARY KEY CLUSTERED (MatchID, PlayerIn, PlayerOut, [Minute])

-- Foreign keys
ALTER TABLE LeagueLayout
	ADD CONSTRAINT fk_leaguelayout_league		FOREIGN KEY (League)
												REFERENCES League ([Name])
												ON UPDATE NO ACTION
												ON DELETE NO ACTION;

ALTER TABLE LeagueLayout
	ADD CONSTRAINT fk_leaguelayout_footballteam FOREIGN KEY (TeamID)
												REFERENCES FootballTeam (TeamID)
												ON UPDATE NO ACTION
												ON DELETE NO ACTION;

ALTER TABLE TeamLayout
	ADD CONSTRAINT fk_teamlayout_footballteam	FOREIGN KEY (TeamID)
												REFERENCES FootballTeam (TeamID)
												ON UPDATE NO ACTION
												ON DELETE NO ACTION;

ALTER TABLE TeamLayout
	ADD CONSTRAINT fk_teamlayout_player			FOREIGN KEY (PersonID)
												REFERENCES Person (PersonID)
												ON UPDATE NO ACTION
												ON DELETE NO ACTION;

ALTER TABLE [Match]
	ADD CONSTRAINT fk_match_hometeam			FOREIGN KEY (HomeTeam)
												REFERENCES FootballTeam (TeamID)
												ON UPDATE NO ACTION
												ON DELETE NO ACTION;

ALTER TABLE [Match]
	ADD CONSTRAINT fk_match_awayteam			FOREIGN KEY (AwayTeam)
												REFERENCES FootballTeam (TeamID)
												ON UPDATE NO ACTION
												ON DELETE NO ACTION;

ALTER TABLE [Match]
	ADD CONSTRAINT fk_match_location			FOREIGN KEY ([Address], Postalcode)
												REFERENCES [Location] ([Address], Postalcode)
												ON UPDATE NO ACTION
												ON DELETE NO ACTION;

ALTER TABLE FootballTeam		
	ADD CONSTRAINT fk_footballteam_coach		FOREIGN KEY (Coach)
												REFERENCES Person (PersonID)
												ON UPDATE NO ACTION
												ON DELETE NO ACTION;

-- Alternate keys
ALTER TABLE FootballTeam
	ADD CONSTRAINT ak_footballteam				UNIQUE ([Name], [Address], Postalcode)

ALTER TABLE [Match]
	ADD CONSTRAINT ak_match						UNIQUE (HomeTeam, AwayTeam, [MatchDate])

USE Master