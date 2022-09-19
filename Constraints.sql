USE Footbal_Manager_Database

alter table BENCHED
   add constraint FK_BENCHED_REFERENCE_PERSON foreign key (PERSONID)
      references PERSON (PERSONID)
      on update restrict
      on delete restrict;

alter table BENCHED
   add constraint FK_BENCHED_REFERENCE_GAME foreign key (GAMEID)
      references GAME (GAMEID)
      on update restrict
      on delete restrict;

alter table CLUBLAYOUT
   add constraint FK_CLUBLAYO_REFERENCE_PERSON foreign key (PERSONID)
      references PERSON (PERSONID)
      on update restrict
      on delete restrict;

alter table CLUBLAYOUT
   add constraint FK_CLUBLAYO_REFERENCE_SOCCERCL foreign key (NAMEOFCLUB, ADRESS, POSTALCODE)
      references SOCCERCLUB (NAMEOFCLUB, ADRESS, POSTALCODE)
      on update restrict
      on delete restrict;

alter table EVENT
   add constraint FK_EVENT_GEBEURTEN_GAME foreign key (GAMEID)
      references GAME (GAMEID)
      on update restrict
      on delete restrict;

alter table EVENT
   add constraint FK_EVENT_GEBEURTEN_PERSON foreign key (PERSONID)
      references PERSON (PERSONID)
      on update restrict
      on delete restrict;

alter table EVENT
   add constraint FK_EVENT_REFERENCE_POSSIBLE foreign key (EVENT)
      references POSSIBLEEVENTS (EVENT)
      on update restrict
      on delete restrict;

alter table GAME
   add constraint FK_GAME_LOCATIEVA_LOCATION foreign key (, )
      references LOCATION (ADRESS, POSTALCODE)
      on update restrict
      on delete restrict;

alter table GAME
   add constraint FK_GAME_THUISCLUB_SOCCERCL foreign key (HOMECLUB, , )
      references SOCCERCLUB (NAMEOFCLUB, ADRESS, POSTALCODE)
      on update restrict
      on delete restrict;

alter table GAME
   add constraint FK_GAME_UITCLUBIN_SOCCERCL foreign key (AWAYCLUB, ADRESS, POSTALCODE)
      references SOCCERCLUB (NAMEOFCLUB, ADRESS, POSTALCODE)
      on update restrict
      on delete restrict;

alter table LEAGUELAYOUT
   add constraint FK_LEAGUELA_COMPETITI_SOCCERCL foreign key (NAAMVANCOMPETITIE, ADRESS, POSTALCODE)
      references SOCCERCLUB (NAMEOFCLUB, ADRESS, POSTALCODE)
      on update restrict
      on delete restrict;

alter table LEAGUELAYOUT
   add constraint FK_LEAGUELA_SPEELT_IN_LEAGUE foreign key (NAAMVANCLUB)
      references LEAGUE (NAMEOFLEAGUE)
      on update restrict
      on delete restrict;

alter table LINE_UP
   add constraint FK_LINE_UP_OPSTELLIN_GAME foreign key (GAMEID)
      references GAME (GAMEID)
      on update restrict
      on delete restrict;

alter table LINE_UP
   add constraint FK_LINE_UP_REFERENCE_POSSIBLE foreign key (POSITION)
      references POSSIBLEPOSITIONS (POSITION)
      on update restrict
      on delete restrict;

alter table LINE_UP
   add constraint FK_LINE_UP_SPELERINO_PERSON foreign key (PERSONID)
      references PERSON (PERSONID)
      on update restrict
      on delete restrict;

alter table REFEREE
   add constraint FK_REFEREE_REFERENCE_GAME foreign key (GAMEID)
      references GAME (GAMEID)
      on update restrict
      on delete restrict;

alter table REFEREE
   add constraint FK_REFEREE_REFERENCE_PERSON foreign key (PERSONID)
      references PERSON (PERSONID)
      on update restrict
      on delete restrict;

alter table SOCCERCLUB
   add constraint FK_SOCCERCL_IS_COACH__PERSON foreign key (COACH)
      references PERSON (PERSONID)
      on update restrict
      on delete restrict;

alter table SOCCERCLUB
   add constraint FK_SOCCERCL_LOCATIEVA_LOCATION foreign key (ADRESS, POSTALCODE)
      references LOCATION (ADRESS, POSTALCODE)
      on update restrict
      on delete restrict;

alter table SUBSTITUTION
   add constraint FK_SUBSTITU_INGEWISSE_PERSON foreign key (PLAYERIN)
      references PERSON (PERSONID)
      on update restrict
      on delete restrict;

alter table SUBSTITUTION
   add constraint FK_SUBSTITU_UITGEWISS_PERSON foreign key (PLAYEROUT)
      references PERSON (PERSONID)
      on update restrict
      on delete restrict;

alter table SUBSTITUTION
   add constraint FK_SUBSTITU_WISSELINW_GAME foreign key (GAMEID)
      references GAME (GAMEID)
      on update restrict
      on delete restrict;

