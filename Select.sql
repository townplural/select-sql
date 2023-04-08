select year, name from list_of_albums
where year = 2018;

select name, duration from list_of_tracks
order by duration desc;

select name, duration from list_of_tracks 
where duration >= 210;

select name, year from list_of_compilations
where year between 2018 and 2020;

select name from list_of_artists
where name not like '%% %%';

select name from list_of_tracks
where name like '%my%''%мой%';
