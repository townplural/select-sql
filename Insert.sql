INSERT INTO list_of_genres(genre_name)
VALUES
	('Hardcore'),
	('Russian_rap'),
	('R&B'),
	('Rap'),
	('Phonk');
-----------------------------------------------------
INSERT INTO list_of_albums(year, name)
VALUES
	(2018, 'Boltcutter'),
	(2019, 'Get Loud!'),
	(2016, 'RARE GODS, Vol. 1'),
	(2016, 'PHOSPHOR'),
	(2012, 'Unapologetic'),
	(2015, 'Beauty Behind The Madness'),
	(2016, 'Warlord'),
	(2017, 'UNRENDERED'),
	(2018, 'Pink Lotus'),
	(2018, 'Blood Oceans (How Many?)');
-------------------------------------------------------
INSERT INTO list_of_artists(name)
VALUES
	('Moscow Death Brigade'),
	('Agnostic Front'),
	('Boulevard depo'),
	('Pharaoh'),
	('Rhiana'),
	('The Weeknd'),
	('Yung lean'),
	('BONES'),
	('Freddie Dredd'),
	('Ghostemane');
-------------------------------------------------------
INSERT INTO list_of_tracks(album_id, name, duration)
VALUES
	('1','Renegade Stomp',175),
	('1','Rudegirl Warrior',175),
	('2','Spray Painted Walls',165),
	('2','I Remember',191),
	('3','Rare Kaaviilxraava Oo / Rare Clean',167),
	('3','Rare Death',218),
	('4','Псы всегда попадают в рай',183),
	('4','ММ',131),
	('5','Diamonds',225),
	('5','Pour It Up',161),
	('6','Often',249),
	('6','The Hills',242),
	('7','Afghanistan',167),
	('7','Sippin',249),
	('8','CtrlAltDelete',178),
	('8','MustBeARealDragWakingUpAndBeingYou',116),
	('9','What You Know',82),
	('9','Bastard',160),
	(10, 'Blood Oceans (How Many?)', 178);
-----------------------------------------------------
INSERT INTO list_of_compilations(name,year)
VALUES
	('Best of Moscow Death Brigade',2023),
	('Best of Agnostic Front',2023),
	('Best of Boulevard Depo',2023),
	('Best of Pharaoh',2023),
	('Best of Rhiana',2023),
	('Best of The Weeknd',2023),
	('Best of Yung lean',2023),
	('Best of BONES',2023),
	('Best of Freddie Dredd',2023);
-----------------------------------------------------
INSERT INTO artistalbum(artist_id, album_id)
VALUES
	(1, 1),
	(2, 2),
	(3, 3),
	(4, 4),
	(5, 5),
	(6, 6),
	(7, 7),
	(8, 8),
	(9, 9),
	(10, 10),
	(4, 10);
-----------------------------------------------------
INSERT INTO genreartist(genre_id, artist_id)
VALUES
	(1, 1),
	(1, 2),
	(2, 3),
	(2, 4),
	(3, 5),
	(3, 6),
	(4, 7),
	(4, 8),
	(5, 9),
	(4, 10);
-----------------------------------------------------
INSERT INTO trackcompilation(compilation_id, track_id)
VALUES
	(1, 1),
	(1, 2),
	(2, 3),
	(2, 4),
	(3, 5),
	(3, 6),
	(4, 7),
	(4, 8),
	(5, 9),
	(5, 10),
	(6, 11),
	(6, 12),
	(7, 13),
	(7, 14),
	(8, 15),
	(8, 16),
	(9, 17),
	(9, 18);
