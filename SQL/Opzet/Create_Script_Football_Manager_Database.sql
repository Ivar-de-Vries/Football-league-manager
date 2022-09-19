USE MASTER

IF EXISTS (SELECT * FROM sys.databases where name = 'FOOTBALL_MANAGER_DATABASE')
BEGIN
	DROP DATABASE FOOTBALL_MANAGER_DATABASE
	PRINT 'Dropped database:	FOOTBALL_MANAGER_DATABASE'
END

CREATE DATABASE FOOTBALL_MANAGER_DATABASE;
PRINT 'Created database:	FOOTBALL_MANAGER_DATABASE'
GO
USE FOOTBALL_MANAGER_DATABASE
/*==============================================================*/
/* Table: Benched                                               */
/*==============================================================*/
CREATE TABLE [Benched]
(
   PersonID             NUMERIC(6)                     NOT NULL,
   MatchID              NUMERIC(6)                     NOT NULL
);

/*==============================================================*/
/* Table: ClubLayout                                            */
/*==============================================================*/
CREATE TABLE [TeamLayout]
(
	PersonID			NUMERIC(6)						NOT NULL,
	TeamID				NUMERIC(6)						NOT NULL,
	Shirtname			NUMERIC(2)						NOT NULL,
	Startdate           DATE							NOT NULL,
	Enddate             DATE							NULL
);

/*==============================================================*/
/* Table: SoccerClub                                            */
/*==============================================================*/
CREATE TABLE [FootballTeam]
(
	TeamID				NUMERIC(6)						NOT NULL,
	[Name]				VARCHAR(255)					NOT NULL,
	[Address]			VARCHAR(255)					NOT NULL,
	Postalcode          VARCHAR(10)						NOT NULL,
	COACH               NUMERIC(6)						NOT NULL
);

/*==============================================================*/
/* Table: Event                                                 */
/*==============================================================*/
CREATE TABLE [Event] 
(
	EventID             NUMERIC(3)						NOT NULL,
	MatchID             NUMERIC(6)						NOT NULL,
	PersonID            NUMERIC(6)						NOT NULL,
	[Minute]			NUMERIC(3)						NOT NULL,
	[Event]				VARCHAR(255)					NOT NULL
);

/*==============================================================*/
/* Table: Match                                                  */
/*==============================================================*/
CREATE TABLE [Match] 
(
	MatchID				NUMERIC(6)						NOT NULL,
	[Round]				NUMERIC(2)						NOT NULL,
	MatchDate			DATE							NOT NULL,
	HomeTeam			NUMERIC(6)						NOT NULL,
	AwayTeam            NUMERIC(6)						NOT NULL,
	[Address]           VARCHAR(255)					NOT NULL,
	Postalcode          VARCHAR(10)						NOT NULL,
	HomeTeamPosession	NUMERIC(3)						NULL
);

/*==============================================================*/
/* Table: League                                                */
/*==============================================================*/
CREATE TABLE [League]
(
	[Name]				VARCHAR(255)					NOT NULL,
	Country             VARCHAR(255)					NOT NULL,
	[Level]				NUMERIC(1)						NOT NULL,
	MaxTeams            NUMERIC(2)						NOT NULL
);

/*==============================================================*/
/* Table: LeagueLayout                                          */
/*==============================================================*/
CREATE TABLE [LeagueLayout] 
(
	League				VARCHAR(255)					NOT NULL,
	TeamID				NUMERIC(6)						NOT NULL
);

/*==============================================================*/
/* Table: LineUp                                                */
/*==============================================================*/
CREATE TABLE [LineUp]
(	
	MatchID				NUMERIC(6)						NOT NULL,
	PersonID            NUMERIC(6)						NOT NULL,
	Position			VARCHAR(255)					NOT NULL
);

/*==============================================================*/
/* Table: Location                                              */
/*==============================================================*/
CREATE TABLE [Location]
(	
	[Name]				VARCHAR(255)					NOT NULL,
	[Address]			VARCHAR(255)					NOT NULL,
	Postalcode          VARCHAR(10)						NOT NULL,
	Capacity            NUMERIC(6)						NULL
);

/*==============================================================*/
/* Table: Person                                                */
/*==============================================================*/
CREATE TABLE [Person]
(
	PersonID            NUMERIC(6)						NOT NULL,
	Firstname           VARCHAR(255)					NOT NULL,
	Lastname            VARCHAR(255)					NOT NULL,
	Gender              VARCHAR(1)						NOT NULL,
	DateOfBirth			DATE							NOT NULL,
	[Role]              VARCHAR(255)					NOT NULL
);

/*==============================================================*/
/* Table: PossibleEvents                                        */
/*==============================================================*/
CREATE TABLE [PossibleEvents]
(
	[Event]				VARCHAR(255)					NOT NULL,
);

/*==============================================================*/
/* Table: PossiblePosition                                      */
/*==============================================================*/
CREATE TABLE [PossiblePositions]
(
	[Position]				VARCHAR(255)					NOT NULL,
);

/*==============================================================*/
/* Table: TypeOfOfficial										*/
/*==============================================================*/
CREATE TABLE [TypeOfOfficial]
(
	[Type]				VARCHAR(255)					NOT NULL
);

/*==============================================================*/
/* Table: Official                                              */
/*==============================================================*/
CREATE TABLE [Official]
(
	PersonID            NUMERIC(6)						NOT NULL,
	MatchID				NUMERIC(6)						NOT NULL,
	[Type]              VARCHAR(255)					NOT NULL
);

/*==============================================================*/
/* Table: Substitution                                          */
/*==============================================================*/
CREATE TABLE [Substitution]
(
	MatchID             NUMERIC(6)						NOT NULL,
	PlayerIn			NUMERIC(6)						NOT NULL,
	PlayerOut           NUMERIC(6)						NOT NULL,
	[Minute]			NUMERIC(3)						NOT NULL
);

PRINT 'Create script succesfully completed at: ' + CONVERT(varChar(10), GETDATE(), 108)

/* Shows a list of all tables that are created */
SELECT TABLE_NAME as 'Name of Table'
FROM FOOTBALL_MANAGER_DATABASE.INFORMATION_SCHEMA.TABLES 
