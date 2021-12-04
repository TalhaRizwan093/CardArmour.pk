
    create table lab_mid.coaches (
       coache_id number(1,0) not null,
        name varchar2(255 char),
        speciality varchar2(255 char),
        total_experience varchar2(255 char),
        primary key (coache_id)
    );

    create table lab_mid.location (
       location_id number(1,0) not null,
        country varchar2(255 char),
        primary key (location_id)
    );

    create table lab_mid.matches (
       match_id number(1,0) not null,
        match_date date,
        match_type varchar2(255 char),
        wheather_condition varchar2(255 char),
        primary key (match_id)
    );

    create table lab_mid.onfield_players (
       onfield_id number(1,0) not null,
        contains_contain_id number(1,0),
        primary key (onfield_id)
    );

    create table lab_mid.participatedin (
       particpatein_id number(1,0) not null,
        primary key (particpatein_id)
    );

    create table lab_mid.player (
       player_id number(1,0) not null,
        name varchar2(255 char),
        position varchar2(255 char),
        shirt_number number(1,0),
        primary key (player_id)
    );

    create table lab_mid.refree_match (
       refree_match_id number(1,0) not null,
        primary key (refree_match_id)
    );

    create table lab_mid.refrees (
       refree_id number(1,0) not null,
        experience varchar2(255 char),
        name varchar2(255 char),
        type varchar2(255 char),
        primary key (refree_id)
    );

    create table lab_mid.statictics (
       state_id number(1,0) not null,
        fouls number(1,0),
        goals number(1,0),
        winner varchar2(255 char),
        primary key (state_id)
    );

    create table lab_mid.team (
       team_id number(1,0) not null,
        name varchar2(255 char),
        primary key (team_id)
    );

    create table lab_mid.team_players (
       team_id number(1,0) not null,
        player_id number(1,0) not null,
        contain_id number(1,0) not null,
        primary key (team_id, player_id, contain_id)
    );

    create table lab_mid.tournaments (
       tournament_id number(1,0) not null,
        location varchar2(255 char),
        title varchar2(255 char),
        primary key (tournament_id)
    );

    create table lab_mid.venue (
       venue_id number(1,0) not null,
        primary key (venue_id)
    );
create sequence hibernate_sequence start with 1 increment by  1;

    create table lab_mid.coaches (
       coache_id number(1,0) not null,
        name varchar2(255 char),
        speciality varchar2(255 char),
        total_experience varchar2(255 char),
        primary key (coache_id)
    );

    create table lab_mid.location (
       location_id number(1,0) not null,
        country varchar2(255 char),
        primary key (location_id)
    );

    create table lab_mid.matches (
       match_id number(1,0) not null,
        match_date date,
        match_type varchar2(255 char),
        wheather_condition varchar2(255 char),
        primary key (match_id)
    );

    create table lab_mid.onfield_players (
       onfield_id number(1,0) not null,
        contains_contain_id number(1,0),
        primary key (onfield_id)
    );

    create table lab_mid.participatedin (
       particpatein_id number(1,0) not null,
        primary key (particpatein_id)
    );

    create table lab_mid.player (
       player_id number(1,0) not null,
        name varchar2(255 char),
        position varchar2(255 char),
        shirt_number number(1,0),
        primary key (player_id)
    );

    create table lab_mid.refree_match (
       refree_match_id number(1,0) not null,
        primary key (refree_match_id)
    );

    create table lab_mid.refrees (
       refree_id number(1,0) not null,
        experience varchar2(255 char),
        name varchar2(255 char),
        type varchar2(255 char),
        primary key (refree_id)
    );

    create table lab_mid.statictics (
       state_id number(1,0) not null,
        fouls number(1,0),
        goals number(1,0),
        winner varchar2(255 char),
        primary key (state_id)
    );

    create table lab_mid.team (
       team_id number(1,0) not null,
        name varchar2(255 char),
        primary key (team_id)
    );

    create table lab_mid.team_players (
       team_id number(1,0) not null,
        player_id number(1,0) not null,
        contain_id number(1,0) not null,
        primary key (team_id, player_id, contain_id)
    );

    create table lab_mid.tournaments (
       tournament_id number(1,0) not null,
        location varchar2(255 char),
        title varchar2(255 char),
        primary key (tournament_id)
    );

    create table lab_mid.venue (
       venue_id number(1,0) not null,
        primary key (venue_id)
    );
create sequence hibernate_sequence start with 1 increment by  1;
