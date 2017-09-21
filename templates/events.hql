DROP table if exists events_{{count}};
CREATE TABLE events_{{count}} (client_id string, money int, country_code string) row format delimited fields terminated by ',';
LOAD DATA LOCAL INPATH '/tmp/events_{{count}}.csv' OVERWRITE INTO TABLE events_{{count}};

DROP table if exists events_{{count}}_orc;
CREATE TABLE events_{{count}}_orc (client_id string, money int, country_code string) stored as orc;
insert into events_{{count}}_orc select * from events_{{count}};

DROP table if exists events_{{count}}_partitioned;
create table events_{{count}}_partitioned (client_id string, money int) partitioned by (country_code string) stored as orc;
insert into events_{{count}}_partitioned partition(country_code) select * from events_{{count}};
