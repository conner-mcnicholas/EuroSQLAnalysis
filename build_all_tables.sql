CREATE TABLE euro_cup_2016.asst_referee_mast
(
	﻿ass_ref_id VARCHAR(5) NULL,
	ass_ref_name VARCHAR(24) NULL,
	country_id VARCHAR(4) NULL
);CREATE TABLE euro_cup_2016.coach_mast
(
	﻿coach_id VARCHAR(4) NULL,
	coach_name VARCHAR(19) NULL
);CREATE TABLE euro_cup_2016.goal_details
(
	﻿goal_id VARCHAR(3) NULL,
	match_no VARCHAR(2) NULL,
	player_id VARCHAR(6) NULL,
	team_id VARCHAR(4) NULL,
	goal_time VARCHAR(3) NULL,
	goal_type VARCHAR(1) NULL,
	play_stage VARCHAR(1) NULL,
	goal_schedule VARCHAR(2) NULL,
	goal_half VARCHAR(1) NULL
);CREATE TABLE euro_cup_2016.match_captain
(
	﻿match_no VARCHAR(2) NULL,
	team_id VARCHAR(4) NULL,
	player_captain VARCHAR(6) NULL
);CREATE TABLE euro_cup_2016.match_details
(
	﻿match_no VARCHAR(2) NULL,
	play_stage VARCHAR(1) NULL,
	team_id VARCHAR(4) NULL,
	win_lose VARCHAR(1) NULL,
	decided_by VARCHAR(1) NULL,
	goal_score VARCHAR(1) NULL,
	penalty_score VARCHAR(1) NULL,
	ass_ref VARCHAR(5) NULL,
	player_gk VARCHAR(6) NULL
);CREATE TABLE euro_cup_2016.match_mast
(
	﻿match_no VARCHAR(2) NULL,
	play_stage VARCHAR(1) NULL,
	play_date VARCHAR(10) NULL,
	results VARCHAR(4) NULL,
	decided_by VARCHAR(1) NULL,
	goal_score VARCHAR(6) NULL,
	venue_id VARCHAR(5) NULL,
	referee_id VARCHAR(5) NULL,
	audence VARCHAR(5) NULL,
	plr_of_match VARCHAR(6) NULL,
	stop1_sec VARCHAR(3) NULL,
	stop2_sec VARCHAR(3) NULL
);CREATE TABLE euro_cup_2016.penalty_gk
(
	﻿match_no VARCHAR(2) NULL,
	team_id VARCHAR(4) NULL,
	player_gk VARCHAR(6) NULL
);CREATE TABLE euro_cup_2016.penalty_shootout
(
	﻿kick_id VARCHAR(2) NULL,
	match_no VARCHAR(2) NULL,
	team_id VARCHAR(4) NULL,
	player_id VARCHAR(6) NULL,
	score_goal VARCHAR(1) NULL,
	kick_no VARCHAR(2) NULL
);CREATE TABLE euro_cup_2016.player_booked
(
	﻿match_no VARCHAR(2) NULL,
	team_id VARCHAR(4) NULL,
	player_id VARCHAR(6) NULL,
	booking_time VARCHAR(3) NULL,
	sent_off VARCHAR(1) NULL,
	play_schedule VARCHAR(2) NULL,
	play_half VARCHAR(1) NULL
);CREATE TABLE euro_cup_2016.player_in_out
(
	﻿match_no VARCHAR(2) NULL,
	team_id VARCHAR(4) NULL,
	player_id VARCHAR(6) NULL,
	in_out VARCHAR(1) NULL,
	time_in_out VARCHAR(3) NULL,
	play_schedule VARCHAR(2) NULL,
	play_half VARCHAR(1) NULL
);CREATE TABLE euro_cup_2016.player_mast
(
	﻿player_id VARCHAR(6) NULL,
	team_id VARCHAR(4) NULL,
	jersey_no VARCHAR(2) NULL,
	player_name VARCHAR(22) NULL,
	posi_to_play VARCHAR(2) NULL,
	dt_of_bir VARCHAR(10) NULL,
	age VARCHAR(2) NULL,
	playing_club VARCHAR(19) NULL
);CREATE TABLE euro_cup_2016.playing_position
(
	﻿position_id VARCHAR(2) NULL,
	position_desc VARCHAR(11) NULL
);CREATE TABLE euro_cup_2016.referee_mast
(
	﻿referee_id VARCHAR(5) NULL,
	referee_name VARCHAR(23) NULL,
	country_id VARCHAR(4) NULL
);CREATE TABLE euro_cup_2016.soccer_city
(
	﻿city_id VARCHAR(5) NULL,
	city VARCHAR(13) NULL,
	country_id VARCHAR(4) NULL
);CREATE TABLE euro_cup_2016.soccer_country
(
	﻿country_id VARCHAR(4) NULL,
	country_abbr VARCHAR(3) NULL,
	country_name VARCHAR(19) NULL
);CREATE TABLE euro_cup_2016.soccer_team
(
	﻿team_id VARCHAR(4) NULL,
	team_group VARCHAR(1) NULL,
	match_played VARCHAR(1) NULL,
	won VARCHAR(1) NULL,
	draw VARCHAR(1) NULL,
	lost VARCHAR(1) NULL,
	goal_for VARCHAR(1) NULL,
	goal_agnst VARCHAR(1) NULL,
	goal_diff VARCHAR(2) NULL,
	points VARCHAR(1) NULL,
	group_position VARCHAR(1) NULL
);CREATE TABLE euro_cup_2016.soccer_venue
(
	﻿venue_id VARCHAR(5) NULL,
	venue_name VARCHAR(23) NULL,
	city_id VARCHAR(5) NULL,
	aud_capacity VARCHAR(5) NULL
);CREATE TABLE euro_cup_2016.team_coaches
(
	﻿team_id VARCHAR(4) NULL,
	coach_id VARCHAR(4) NULL
);