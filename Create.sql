CREATE DATABASE Footbal_Manager_Database

/*==============================================================*/
/* Table: BENCHED                                               */
/*==============================================================*/
create table BENCHED 
(
   PERSONID             numeric(6)                     not null,
   GAMEID               numeric(6)                     not null,
   constraint PK_BENCHED primary key clustered (PERSONID, GAMEID)
);

/*==============================================================*/
/* Index: GEBEURTENIS_PK                                        */
/*==============================================================*/
create unique clustered index GEBEURTENIS_PK on BENCHED (
PERSONID ASC,
GAMEID ASC
);

/*==============================================================*/
/* Index: GEBEURTENISVANSPELER_FK                               */
/*==============================================================*/
create index GEBEURTENISVANSPELER_FK on BENCHED (

);

/*==============================================================*/
/* Index: GEBEURTENISINWEDSTRIJD_FK                             */
/*==============================================================*/
create index GEBEURTENISINWEDSTRIJD_FK on BENCHED (

);

/*==============================================================*/
/* Table: CLUBLAYOUT                                            */
/*==============================================================*/
create table CLUBLAYOUT 
(
   PERSONID             numeric(6)                     not null,
   NAMEOFCLUB           varchar(255)                   not null,
   ADRESS               varchar(255)                   not null,
   POSTALCODE           varchar(10)                    not null,
   SHIRTNUMBER          numeric(2)                     not null,
   STARTDATE            Date                           not null,
   ENDDATE              date                           null,
   constraint PK_CLUBLAYOUT primary key clustered (PERSONID, NAMEOFCLUB, ADRESS, POSTALCODE, STARTDATE)
);

/*==============================================================*/
/* Index: GEBEURTENIS_PK                                        */
/*==============================================================*/
create unique clustered index GEBEURTENIS_PK on CLUBLAYOUT (
PERSONID ASC,
NAMEOFCLUB ASC,
ADRESS ASC,
POSTALCODE ASC,
STARTDATE ASC
);

/*==============================================================*/
/* Index: GEBEURTENISVANSPELER_FK                               */
/*==============================================================*/
create index GEBEURTENISVANSPELER_FK on CLUBLAYOUT (
PERSONID ASC
);

/*==============================================================*/
/* Index: GEBEURTENISINWEDSTRIJD_FK                             */
/*==============================================================*/
create index GEBEURTENISINWEDSTRIJD_FK on CLUBLAYOUT (

);

/*==============================================================*/
/* Table: EVENT                                                 */
/*==============================================================*/
create table EVENT 
(
   EVENTID              numeric(3)                     not null,
   GAMEID               numeric(6)                     not null,
   PERSONID             numeric(6)                     not null,
   MINUTE               numeric(3)                     not null,
   EVENT                varchar(255)                   not null,
   constraint PK_EVENT primary key clustered (GAMEID, EVENTID)
);

/*==============================================================*/
/* Index: GEBEURTENIS_PK                                        */
/*==============================================================*/
create unique clustered index GEBEURTENIS_PK on EVENT (
GAMEID ASC,
EVENTID ASC
);

/*==============================================================*/
/* Index: GEBEURTENISVANSPELER_FK                               */
/*==============================================================*/
create index GEBEURTENISVANSPELER_FK on EVENT (
PERSONID ASC
);

/*==============================================================*/
/* Index: GEBEURTENISINWEDSTRIJD_FK                             */
/*==============================================================*/
create index GEBEURTENISINWEDSTRIJD_FK on EVENT (
GAMEID ASC
);

/*==============================================================*/
/* Table: GAME                                                  */
/*==============================================================*/
create table GAME 
(
   GAMEID               numeric(6)                     not null,
   ROUND                numeric(2)                     not null,
   "DATE"               date                           not null,
   AWAYCLUB             numeric(6)                     not null,
   ADRESS               varchar(255)                   not null,
   POSTALCODE           varchar(10)                    not null,
   HOMECLUB             numeric(6)                     not null,
   constraint PK_GAME primary key clustered (GAMEID)
);

/*==============================================================*/
/* Index: WEDSTRIJD_PK                                          */
/*==============================================================*/
create unique clustered index WEDSTRIJD_PK on GAME (
GAMEID ASC
);

/*==============================================================*/
/* Index: UITCLUBINWEDSTRIJD_FK                                 */
/*==============================================================*/
create index UITCLUBINWEDSTRIJD_FK on GAME (
AWAYCLUB ASC,
ADRESS ASC,
POSTALCODE ASC
);

/*==============================================================*/
/* Index: THUISCLUBINWEDSTRIJD_FK                               */
/*==============================================================*/
create index THUISCLUBINWEDSTRIJD_FK on GAME (
HOMECLUB ASC
);

/*==============================================================*/
/* Index: LOCATIEVANWEDSTRIJD_FK                                */
/*==============================================================*/
create index LOCATIEVANWEDSTRIJD_FK on GAME (

);

/*==============================================================*/
/* Index: SCHEIDSRECHTERVANWEDSTRIJD_FK                         */
/*==============================================================*/
create index SCHEIDSRECHTERVANWEDSTRIJD_FK on GAME (

);

/*==============================================================*/
/* Table: LEAGUE                                                */
/*==============================================================*/
create table LEAGUE 
(
   NAMEOFLEAGUE         varchar(255)                   not null,
   COUNTRY              varchar(255)                   not null,
   LEVEL                numeric(1)                     not null,
   MAXCLUBS             numeric(2)                     not null,
   constraint PK_LEAGUE primary key clustered (NAMEOFLEAGUE)
);

/*==============================================================*/
/* Index: COMPETITIE_PK                                         */
/*==============================================================*/
create unique clustered index COMPETITIE_PK on LEAGUE (
NAMEOFLEAGUE ASC
);

/*==============================================================*/
/* Table: LEAGUELAYOUT                                          */
/*==============================================================*/
create table LEAGUELAYOUT 
(
   NAAMVANCOMPETITIE    varchar(255)                   not null,
   ADRESS               varchar(255)                   not null,
   POSTALCODE           varchar(10)                    not null,
   NAAMVANCLUB          varchar(255)                   not null,
   constraint PK_LEAGUELAYOUT primary key clustered (NAAMVANCOMPETITIE, ADRESS, POSTALCODE, NAAMVANCLUB)
);

/*==============================================================*/
/* Index: COMPETITIEINDELING_PK                                 */
/*==============================================================*/
create unique clustered index COMPETITIEINDELING_PK on LEAGUELAYOUT (
NAAMVANCOMPETITIE ASC,
ADRESS ASC,
POSTALCODE ASC,
NAAMVANCLUB ASC
);

/*==============================================================*/
/* Index: COMPETITIEINDELING_FK                                 */
/*==============================================================*/
create index COMPETITIEINDELING_FK on LEAGUELAYOUT (
NAAMVANCOMPETITIE ASC,
ADRESS ASC,
POSTALCODE ASC
);

/*==============================================================*/
/* Index: SPEELT_IN_FK                                          */
/*==============================================================*/
create index SPEELT_IN_FK on LEAGUELAYOUT (
NAAMVANCLUB ASC
);

/*==============================================================*/
/* Table: LINE_UP                                               */
/*==============================================================*/
create table LINE_UP 
(
   GAMEID               numeric(6)                     not null,
   PERSONID             numeric(6)                     not null,
   POSITION             varchar(255)                   not null,
   constraint PK_LINE_UP primary key clustered (GAMEID, PERSONID, POSITION)
);

/*==============================================================*/
/* Index: OPSTELLING_PK                                         */
/*==============================================================*/
create unique clustered index OPSTELLING_PK on LINE_UP (
GAMEID ASC,
PERSONID ASC,
POSITION ASC
);

/*==============================================================*/
/* Index: OPSTELLINGVANWEDSTRIJD_FK                             */
/*==============================================================*/
create index OPSTELLINGVANWEDSTRIJD_FK on LINE_UP (
GAMEID ASC
);

/*==============================================================*/
/* Index: SPELERINOPSTELLING_FK                                 */
/*==============================================================*/
create index SPELERINOPSTELLING_FK on LINE_UP (
PERSONID ASC
);

/*==============================================================*/
/* Table: LOCATION                                              */
/*==============================================================*/
create table LOCATION 
(
   NAMEOFSTADIUM        varchar(255)                   not null,
   CAPACITY             numeric(6)                     null,
   ADRESS               varchar(255)                   not null,
   POSTALCODE           varchar(10)                    not null,
   constraint PK_LOCATION primary key clustered (ADRESS, POSTALCODE)
);

/*==============================================================*/
/* Index: LOCATIE_PK                                            */
/*==============================================================*/
create unique clustered index LOCATIE_PK on LOCATION (
ADRESS ASC,
POSTALCODE ASC
);

/*==============================================================*/
/* Index: SPEELT_IN2_FK                                         */
/*==============================================================*/
create index SPEELT_IN2_FK on LOCATION (

);

/*==============================================================*/
/* Table: PERSON                                                */
/*==============================================================*/
create table PERSON 
(
   PERSONID             numeric(6)                     not null,
   FIRSTNAME            varchar(255)                   not null,
   LASTNAME             varchar(255)                   not null,
   GENDER               varchar(1)                     not null,
   DATE_OF_BIRTH        date                           not null,
   ROLE                 varchar(255)                   not null,
   constraint PK_PERSON primary key clustered (PERSONID)
);

/*==============================================================*/
/* Index: SPELER_PK                                             */
/*==============================================================*/
create unique clustered index SPELER_PK on PERSON (
PERSONID ASC
);

/*==============================================================*/
/* Index: SPELERVANVOETBALCLUB_FK                               */
/*==============================================================*/
create index SPELERVANVOETBALCLUB_FK on PERSON (

);

/*==============================================================*/
/* Table: POSSIBLEEVENTS                                        */
/*==============================================================*/
create table POSSIBLEEVENTS 
(
   EVENT                varchar(255)                   not null,
   constraint PK_POSSIBLEEVENTS primary key clustered (EVENT)
);

/*==============================================================*/
/* Index: GEBEURTENIS_PK                                        */
/*==============================================================*/
create unique clustered index GEBEURTENIS_PK on POSSIBLEEVENTS (
EVENT ASC
);

/*==============================================================*/
/* Index: GEBEURTENISVANSPELER_FK                               */
/*==============================================================*/
create index GEBEURTENISVANSPELER_FK on POSSIBLEEVENTS (

);

/*==============================================================*/
/* Index: GEBEURTENISINWEDSTRIJD_FK                             */
/*==============================================================*/
create index GEBEURTENISINWEDSTRIJD_FK on POSSIBLEEVENTS (

);

/*==============================================================*/
/* Table: POSSIBLEPOSITIONS                                     */
/*==============================================================*/
create table POSSIBLEPOSITIONS 
(
   POSITION             varchar(255)                   not null,
   constraint PK_POSSIBLEPOSITIONS primary key clustered (POSITION)
);

/*==============================================================*/
/* Index: GEBEURTENIS_PK                                        */
/*==============================================================*/
create unique clustered index GEBEURTENIS_PK on POSSIBLEPOSITIONS (
POSITION ASC
);

/*==============================================================*/
/* Index: GEBEURTENISVANSPELER_FK                               */
/*==============================================================*/
create index GEBEURTENISVANSPELER_FK on POSSIBLEPOSITIONS (

);

/*==============================================================*/
/* Index: GEBEURTENISINWEDSTRIJD_FK                             */
/*==============================================================*/
create index GEBEURTENISINWEDSTRIJD_FK on POSSIBLEPOSITIONS (

);

/*==============================================================*/
/* Table: REFEREE                                               */
/*==============================================================*/
create table REFEREE 
(
   PERSONID             numeric(6)                     not null,
   GAMEID               numeric(6)                     not null,
   TYPE                 Varchar(255)                   not null,
   constraint PK_REFEREE primary key clustered (PERSONID, GAMEID)
);

/*==============================================================*/
/* Index: GEBEURTENIS_PK                                        */
/*==============================================================*/
create unique clustered index GEBEURTENIS_PK on REFEREE (
PERSONID ASC,
GAMEID ASC
);

/*==============================================================*/
/* Index: GEBEURTENISVANSPELER_FK                               */
/*==============================================================*/
create index GEBEURTENISVANSPELER_FK on REFEREE (
PERSONID ASC
);

/*==============================================================*/
/* Index: GEBEURTENISINWEDSTRIJD_FK                             */
/*==============================================================*/
create index GEBEURTENISINWEDSTRIJD_FK on REFEREE (
GAMEID ASC
);

/*==============================================================*/
/* Table: SOCCERCLUB                                            */
/*==============================================================*/
create table SOCCERCLUB 
(
   NAMEOFCLUB           varchar(255)                   not null,
   ADRESS               varchar(255)                   not null,
   POSTALCODE           varchar(10)                    not null,
   COACH                numeric(6)                     not null,
   constraint PK_SOCCERCLUB primary key clustered (NAMEOFCLUB, ADRESS, POSTALCODE)
);

/*==============================================================*/
/* Index: VOETBALCLUB_PK                                        */
/*==============================================================*/
create unique clustered index VOETBALCLUB_PK on SOCCERCLUB (
NAMEOFCLUB ASC,
ADRESS ASC,
POSTALCODE ASC
);

/*==============================================================*/
/* Index: LOCATIEVANCLUB_FK                                     */
/*==============================================================*/
create index LOCATIEVANCLUB_FK on SOCCERCLUB (
ADRESS ASC,
POSTALCODE ASC
);

/*==============================================================*/
/* Index: IS_COACH_VAN_FK                                       */
/*==============================================================*/
create index IS_COACH_VAN_FK on SOCCERCLUB (
COACH ASC
);

/*==============================================================*/
/* Table: SUBSTITUTION                                          */
/*==============================================================*/
create table SUBSTITUTION 
(
   GAMEID               numeric(6)                     not null,
   PLAYERIN             numeric(6)                     not null,
   PLAYEROUT            numeric(6)                     not null,
   MINUTE               numeric(3)                     not null,
   constraint PK_SUBSTITUTION primary key clustered (GAMEID, PLAYERIN, PLAYEROUT, MINUTE)
);

/*==============================================================*/
/* Index: WISSEL_PK                                             */
/*==============================================================*/
create unique clustered index WISSEL_PK on SUBSTITUTION (
GAMEID ASC,
PLAYERIN ASC,
PLAYEROUT ASC,
MINUTE ASC
);

/*==============================================================*/
/* Index: INGEWISSELDESPELER_FK                                 */
/*==============================================================*/
create index INGEWISSELDESPELER_FK on SUBSTITUTION (
PLAYERIN ASC
);

/*==============================================================*/
/* Index: WISSELINWEDSTRIJD_FK                                  */
/*==============================================================*/
create index WISSELINWEDSTRIJD_FK on SUBSTITUTION (
GAMEID ASC
);

/*==============================================================*/
/* Index: UITGEWISSELDESPELER_FK                                */
/*==============================================================*/
create index UITGEWISSELDESPELER_FK on SUBSTITUTION (
PLAYEROUT ASC
);

