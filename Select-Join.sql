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
SELECT loar."name"  FROM list_of_artists loar  
WHERE loar."name" NOT IN(
SELECT loar."name" FROM list_of_artists loar  
LEFT JOIN artistalbum aa  ON loar.artist_id = aa.artist_id 
LEFT JOIN list_of_albums loal ON aa.album_id = loal.album_id  
WHERE YEAR = 2020
);

-- Названия сборников, в которых присутствует конкретный исполнитель (Boulevard Depo).
SELECT DISTINCT loc.name FROM list_of_compilations loc 
LEFT JOIN trackcompilation tc ON loc.compilation_id = tc.compilation_id 
LEFT JOIN list_of_tracks lot ON tc.track_id = lot.track_id 
LEFT JOIN list_of_albums loal ON lot.album_id = loal.album_id 
LEFT JOIN artistalbum aa ON loal.album_id = aa.album_id 
LEFT JOIN list_of_artists loar ON aa.artist_id = loar.artist_id 
WHERE loar.name = 'Boulevard depo';


-- Названия альбомов, в которых присутствуют исполнители более чем одного жанра.
SELECT DISTINCT loal."name", log2.genre_id  FROM list_of_albums loal
LEFT JOIN artistalbum aa ON loal.album_id = aa.album_id 
LEFT JOIN list_of_artists loar ON aa.artist_id = loar.artist_id 
LEFT JOIN genreartist ga  ON loar.artist_id = ga.artist_id 
LEFT JOIN list_of_genres log2 ON ga.genre_id = log2.genre_id 
GROUP BY loal."name", log2.genre_id 
HAVING count(log2.genre_id) > 1;

-- Наименования треков, которые не входят в сборники.
SELECT lot."name"  FROM list_of_tracks lot 
LEFT JOIN trackcompilation tc ON lot.track_id = tc.track_id 
WHERE tc.track_id IS NULL;


-- Исполнитель или исполнители, написавшие самый короткий по продолжительности трек, — теоретически таких треков может быть несколько.

select loar."name" FROM list_of_artists loar
LEFT JOIN artistalbum aa ON loar.artist_id = aa.artist_id 
LEFT JOIN list_of_albums loal ON aa.album_id = loal.album_id 
LEFT JOIN list_of_tracks lot ON loal.album_id = lot.album_id 
WHERE lot.duration = (
SELECT MIN (lot2.duration) FROM list_of_tracks lot2 
);

-- Названия альбомов, содержащих наименьшее количество треков.
SELECT loal.name FROM list_of_albums loal 
LEFT JOIN list_of_tracks lot ON loal.album_id = lot.album_id 
GROUP BY loal.album_id 
HAVING COUNT(lot.track_id) = (
SELECT COUNT(lot.track_id) FROM list_of_tracks lot
GROUP BY loal.album_id 
ORDER BY 1
LIMIT 1
);
