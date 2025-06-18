-- Задание 2
SELECT name, duration 
FROM Tracks 
ORDER BY duration DESC  -- сортируем трэки от большего к меньшему.
LIMIT 1;                -- и забираем первую строчку(самый длинный трэк)

SELECT name 
FROM Tracks 
WHERE duration >= 210;

SELECT name 
FROM Collections 
WHERE release_year BETWEEN 2018 AND 2020;

SELECT name 
FROM Artists 
WHERE name NOT LIKE '% %';

SELECT name 
FROM Tracks 
WHERE string_to_array(lower(name), ' ') && ARRAY['my', 'мой'];
/*
string_to_array(lower(name), ' ') - разбивает строку на массив слов по пробелам ('My World' на {'My', 'World'});
lower(name) - преобразует название трека в нижний регистр;
ARRAY['my', 'мой'] - создает массив искомых слов;
Оператор && - оператор пересечения массивов. Возвращает True или False
*/


-- Задание 3
SELECT g.title AS genre, COUNT(ga.artist_id) AS artist_count
FROM Genres g
JOIN GenresArtists ga ON g.id = ga.genre_id
GROUP BY g.title
ORDER BY artist_count DESC;

SELECT COUNT(t.id) AS track_count
FROM Tracks t
JOIN Albums a ON t.album_id = a.id
WHERE a.release_year BETWEEN 2019 AND 2020;

SELECT a.name AS album, 
       ROUND(AVG(t.duration), 2) AS avg_duration_seconds,
       ROUND(AVG(t.duration)/60, 2) AS avg_duration_minutes
FROM Albums a
JOIN Tracks t ON a.id = t.album_id
GROUP BY a.name
ORDER BY avg_duration_seconds DESC;

SELECT ar.name AS artist
FROM Artists ar
WHERE ar.id NOT IN (
    SELECT aa.artist_id
    FROM ArtistsAlbums aa
    JOIN Albums al ON aa.album_id = al.id
    WHERE al.release_year = 2020
);

SELECT DISTINCT c.name AS collection
FROM Collections c
JOIN CollectionsTracks ct ON c.id = ct.collection_id
JOIN Tracks t ON ct.track_id = t.id
JOIN Albums a ON t.album_id = a.id
JOIN ArtistsAlbums aa ON a.id = aa.album_id
JOIN Artists ar ON aa.artist_id = ar.id
WHERE ar.name = 'artist 2';









































