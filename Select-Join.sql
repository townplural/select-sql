-- Количество исполнителей в каждом жанре.
SELECT log2.genre_name, COUNT(g.artist_id) FROM genreartist g 
LEFT JOIN list_of_artists loar ON g.artist_id = loar.artist_id 
LEFT JOIN list_of_genres log2 ON g.genre_id = log2.genre_id
GROUP BY log2.genre_name;


-- Количество треков, вошедших в альбомы 2019–2020 годов.
SELECT COUNT(lot.track_id) FROM list_of_tracks lot 
LEFT JOIN list_of_albums loal ON lot.album_id = loal.album_id
WHERE year BETWEEN 2019 AND 2020;


-- Средняя продолжительность треков по каждому альбому.
SELECT loal."name", avg(lot.duration) FROM list_of_tracks lot 
LEFT JOIN list_of_albums loal ON lot.album_id = loal.album_id 
GROUP BY loal."name";


--Все исполнители, которые не выпустили альбомы в 2020 году.
SELECT loar."name" , loal."name" FROM artistalbum aa 
LEFT JOIN list_of_albums loal ON aa.album_id = loal.album_id 
LEFT JOIN list_of_artists loar ON aa.artist_id = loar.artist_id
WHERE year != 2020;


-- Названия сборников, в которых присутствует конкретный исполнитель (Boulevard Depo).
SELECT loc."name" FROM list_of_compilations loc 
WHERE loc.name LIKE '%Boulevard Depo%';


-- Названия альбомов, в которых присутствуют исполнители более чем одного жанра.
SELECT loal.name FROM list_of_genres log2
LEFT JOIN genreartist ga ON log2.genre_id = ga.genre_id 
LEFT JOIN list_of_artists loar ON ga.artist_id = loar.artist_id 
LEFT JOIN artistalbum aa ON loar.artist_id  = aa.artist_id 
LEFT JOIN list_of_albums loal ON  aa.album_id  = loal.album_id
GROUP BY loal.name
HAVING COUNT(DISTINCT log2.genre_name) > 1 
ORDER BY loal."name";


-- Наименования треков, которые не входят в сборники.
SELECT lot."name"  FROM list_of_tracks lot 
LEFT JOIN trackcompilation tc ON lot.track_id = tc.track_id 
LEFT JOIN list_of_compilations loc ON tc.compilation_id = loc.compilation_id
ORDER BY loc.compilation_id DESC  
LIMIT 1;


-- Исполнитель или исполнители, написавшие самый короткий по продолжительности трек, — теоретически таких треков может быть несколько.
SELECT loar.name, lot."name", lot.duration  FROM list_of_artists loar
LEFT JOIN artistalbum aa ON loar.artist_id = aa.artist_id 
LEFT JOIN list_of_tracks lot ON aa.album_id = lot.album_id 
ORDER BY duration ASC 
LIMIT 3;

-- Названия альбомов, содержащих наименьшее количество треков.
SELECT loal.name, COUNT(lot.name) from list_of_albums loal
LEFT JOIN list_of_tracks lot on loal.album_id = lot.album_id 
GROUP BY loal.name
ORDER BY COUNT(lot.name) ASC 
LIMIT 3;

