create table candidate(
candidate_id	integer	primary key,
name	varchar(20)	not null,
email	varchar(20)	not null,
phone_number	varchar(20) unique);

create table job_Opening(
job_opening_id	integer	primary key,
title	varchar(20)	not null,
description	text,	
status	varchar(20)	not null);
	
create table applications(
application_id	integer	primary key,
candidate_id	integer	,
job_opening_id	integer	,
status	varchar(20)	not null,
constraint foreign  key fk_cid (candidate_id) references candidate(candidate_id),
constraint foreign  key fk_cid (job_opening_id) references job_Opening(job_opening_id));

create table interview_schedule(
interview_schedule_id	integer	primary key,
candidate_id	integer	,
job_opening_id	integer	,
interview_date	datetime	not null,
status	varchar(20)	not null,
constraint foreign  key fk_cid (candidate_id) references candidate(candidate_id),
constraint foreign  key fk_joid (job_opening_id) references job_Opening(job_opening_id));

create table interview_feedback(
interview_feedback_id	integer	primary key,
interview_schedule_id	integer	,
feedback	text	,
status	varchar(20)	not null,
constraint foreign  key fk_isid (interview_schedule_id) references interview_schedule(interview_schedule_id));