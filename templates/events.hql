DROP table if exists events_{{count}};
CREATE TABLE events_{{count}} (client_id string,country_code string,money int) row format delimited fields terminated by ',';
LOAD DATA LOCAL INPATH '/tmp/events_{{count}}.csv' OVERWRITE INTO TABLE events_{{count}};
DROP table if exists events_{{count}}_orc;
CREATE TABLE events_{{count}}_orc (client_id string,country_code string,money int) stored as orc;
insert into events_{{count}}_orc select * from events_{{count}};

