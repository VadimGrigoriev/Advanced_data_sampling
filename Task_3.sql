-- 1. Количество исполнителей в каждом жанре.
SELECT s.styling_name, COUNT(m.musician_id) AS musicians
  FROM styling AS s
  LEFT JOIN musician_style AS m
    ON s.styling_id = m.styling_id
 GROUP BY s.styling_name
 ORDER BY musicians DESC;
 
-- 2. Количество треков, вошедших в альбомы 2019–2020 годов.
SELECT COUNT(music_id)
  FROM music AS m
  JOIN album AS a
    ON m.album_id = a.album_id
 WHERE album_date BETWEEN 2019 AND 2020;
 
-- 3. Средняя продолжительность треков по каждому альбому.
SELECT a.album_name, AVG(m.music_time)
  FROM music AS m
  JOIN album AS a
    ON m.album_id = a.album_id
 GROUP BY a.album_name;
 
-- 4. Все исполнители, которые не выпустили альбомы в 2020 году.
SELECT musician_name
  FROM musician
 WHERE musician_name NOT IN (SELECT musician_name 
                               FROM musician AS m
                               JOIN album_musician AS am 
                                 ON m.musician_id = am.musician_id
                               JOIN album AS a
                                 ON am.album_id = a.album_id
                              WHERE album_date = 2020);
 
-- 5. Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
SELECT c.collection_name
  FROM collection AS c
       JOIN collection_music AS cm
         ON c.collection_id = cm.collection_id
       JOIN music
         ON cm.music_id = music.music_id 
       JOIN album AS a
         ON music.album_id = a.album_id
       JOIN album_musician AS am
         ON a.album_id = am.album_id 
       JOIN musician AS m
         ON am.musician_id = m.musician_id
 WHERE musician_name = 'The Weeknd';
