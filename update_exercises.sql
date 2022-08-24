use codeup_test_db;

drop table if exists albums;
select * from albums;
select * from albums where artist = 'Lana Del Rey';
select * from albums where release_date < 2000;

update albums
set release_date = release_date - 100
where release_date < 2000;

update albums
set sales = sales * 10
where sales != 'UNKNOWN';

update albums
set artist = 'lama del rey'
where artist = 'Lana Del Rey';
select * from albums where artist = 'lama del rey';


select * from albums;
