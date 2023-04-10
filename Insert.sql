insert into list_of_genres(genre_name)
values('Hardcore');

insert into list_of_genres(genre_name)
values('Russian_rap');

insert into list_of_genres(genre_name)
values('R&B');

insert into list_of_genres(genre_name)
values('Rap');

insert into list_of_genres(genre_name)
values('Phonk');
-----------------------------------------------------
insert into list_of_albums(year, name)
values(2018, 'Boltcutter');

insert into list_of_albums(year, name)
values(2019, 'Get Loud!');

insert into list_of_albums(year, name)
values(2016, 'RARE GODS, Vol. 1');

insert into list_of_albums(year, name)
values(2016, 'PHOSPHOR');

insert into list_of_albums(year, name)
values(2012, 'Unapologetic');

insert into list_of_albums(year, name)
values(2015, 'Beauty Behind The Madness');

insert into list_of_albums(year, name)
values(2016, 'Warlord');

insert into list_of_albums(year, name)
values(2017, 'UNRENDERED');

insert into list_of_albums(year, name)
values(2018, 'Pink Lotus');
-------------------------------------------------------
insert into list_of_artists(name)
values('Moscow Death Brigade');

insert into list_of_artists(name)
values('Agnostic Front');

insert into list_of_artists(name)
values('Boulevard depo');

insert into list_of_artists(name)
values('Pharaoh');

insert into list_of_artists(name)
values('Rhiana');

insert into list_of_artists(name)
values('The Weeknd');

insert into list_of_artists(name)
values('Yung lean');

insert into list_of_artists(name)
values('BONES');

insert into list_of_artists(name)
values('Freddie Dredd');
-------------------------------------------------------
insert into list_of_tracks(album_id, name, duration)
values ('1','Renegade Stomp',175);

insert into list_of_tracks(album_id, name, duration)
values ('1','Rudegirl Warrior',175);

insert into list_of_tracks(album_id, name, duration)
values ('2','Spray Painted Walls',165);

insert into list_of_tracks(album_id, name, duration)
values ('2','I Remember',191);

insert into list_of_tracks(album_id, name, duration)
values ('3','Rare Kaaviilxraava Oo / Rare Clean',167);

insert into list_of_tracks(album_id, name, duration)
values ('3','Rare Death',218);

insert into list_of_tracks(album_id, name, duration)
values ('4','Псы всегда попадают в рай',183);

insert into list_of_tracks(album_id, name, duration)
values ('4','ММ',131);

insert into list_of_tracks(album_id, name, duration)
values ('5','Diamonds',225);

insert into list_of_tracks(album_id, name, duration)
values ('5','Pour It Up',161);

insert into list_of_tracks(album_id, name, duration)
values ('6','Often',249);

insert into list_of_tracks(album_id, name, duration)
values ('6','The Hills',242);

insert into list_of_tracks(album_id, name, duration)
values ('7','Afghanistan',167);

insert into list_of_tracks(album_id, name, duration)
values ('7','Sippin',249);

insert into list_of_tracks(album_id, name, duration)
values ('8','CtrlAltDelete',178);

insert into list_of_tracks(album_id, name, duration)
values ('8','MustBeARealDragWakingUpAndBeingYou',116);

insert into list_of_tracks(album_id, name, duration)
values ('9','What You Know',82);

insert into list_of_tracks(album_id, name, duration)
values ('9','Bastard',160);
-----------------------------------------------------
insert into list_of_compilations(name,year)
values ('Best of Moscow Death Brigade',2023);

insert into list_of_compilations(name,year)
values ('Best of Agnostic Front',2023);

insert into list_of_compilations(name,year)
values ('Best of Boulevard Depo',2023);

insert into list_of_compilations(name,year)
values ('Best of Pharaoh',2023);

insert into list_of_compilations(name,year)
values ('Best of Rhiana',2023);

insert into list_of_compilations(name,year)
values ('Best of The Weeknd',2023);

insert into list_of_compilations(name,year)
values ('Best of Yung lean',2023);

insert into list_of_compilations(name,year)
values ('Best of BONES',2023);

insert into list_of_compilations(name,year)
values ('Best of Freddie Dredd',2023);
-----------------------------------------------------
insert into artistalbum(artist_id, album_id)
values (1,1);

insert into artistalbum(artist_id, album_id)
values (2,2);

insert into artistalbum(artist_id, album_id)
values (3,3);

insert into artistalbum(artist_id, album_id)
values (4,4);

insert into artistalbum(artist_id, album_id)
values (5,5);

insert into artistalbum(artist_id, album_id)
values (6,6);

insert into artistalbum(artist_id, album_id)
values (7,7);

insert into artistalbum(artist_id, album_id)
values (8,8);

insert into artistalbum(artist_id, album_id)
values (9,9);
-----------------------------------------------------
insert into genreartist(genre_id, artist_id)
values(1,1);

insert into genreartist(genre_id, artist_id)
values(1,2);

insert into genreartist(genre_id, artist_id)
values(2,3);

insert into genreartist(genre_id, artist_id)
values(2,4);

insert into genreartist(genre_id, artist_id)
values(3,5);

insert into genreartist(genre_id, artist_id)
values(3,6);

insert into genreartist(genre_id, artist_id)
values(4,7);

insert into genreartist(genre_id, artist_id)
values(4,8);

insert into genreartist(genre_id, artist_id)
values(5,9);
-----------------------------------------------------
insert into trackcompilation(compilation_id, track_id)
values(1,1);

insert into trackcompilation(compilation_id, track_id)
values(1,2);

insert into trackcompilation(compilation_id, track_id)
values(2,3);

insert into trackcompilation(compilation_id, track_id)
values(2,4);

insert into trackcompilation(compilation_id, track_id)
values(3,5);

insert into trackcompilation(compilation_id, track_id)
values(3,6);

insert into trackcompilation(compilation_id, track_id)
values(4,7);

insert into trackcompilation(compilation_id, track_id)
values(4,8);

insert into trackcompilation(compilation_id, track_id)
values(5,9);

insert into trackcompilation(compilation_id, track_id)
values(5,10);

insert into trackcompilation(compilation_id, track_id)
values(6,11);

insert into trackcompilation(compilation_id, track_id)
values(6,12);

insert into trackcompilation(compilation_id, track_id)
values(7,13);

insert into trackcompilation(compilation_id, track_id)
values(7,14);

insert into trackcompilation(compilation_id, track_id)
values(8,15);

insert into trackcompilation(compilation_id, track_id)
values(8,16);

insert into trackcompilation(compilation_id, track_id)
values(9,17);

insert into trackcompilation(compilation_id, track_id)
values(9,18);
