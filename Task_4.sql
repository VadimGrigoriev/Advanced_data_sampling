-- 1. Названия альбомов, в которых присутствуют исполнители более чем одного жанра.
SELECT DISTINCT album_name
  FROM album AS a
       JOIN album_musician AS am
         ON a.album_id = am.album_id 
       JOIN musician AS m
         ON am.musician_id = m.musician_id 
       JOIN musician_style AS ms
         ON m.musician_id = ms.musician_id
 GROUP BY album_name, ms.musician_id
HAVING COUNT(styling_id) > 1;

-- 2. Наименования треков, которые не входят в сборники.
SELECT music_name
  FROM music AS m
       LEFT JOIN collection_music AS cm
         ON m.music_id = cm.music_id 
       LEFT JOIN collection AS c
         ON cm.collection_id = c.collection_id
 WHERE c.collection_name IS NULL;
 
-- 3. Исполнитель или исполнители, написавшие самый короткий по продолжительности трек, — теоретически таких треков может быть несколько.
SELECT musician_name
  FROM musician AS m
       JOIN album_musician AS am
         ON am.musician_id = m.musician_id
       JOIN album AS a
         ON am.album_id = a.album_id
       JOIN music
         ON a.album_id = music.album_id
 WHERE music_time = (SELECT MIN(music_time)
                       FROM music)

-- 4. Названия альбомов, содержащих наименьшее количество треков.
SELECT album_name, COUNT(m.music_name)
  FROM album AS a
  JOIN music AS m
    ON a.album_id = m.album_id
 GROUP BY album_name
HAVING COUNT(m.music_name) = (SELECT MIN(count)
                                FROM (SELECT album_name, COUNT(m.music_name)
                                        FROM album AS a
                                        JOIN music AS m
                                          ON a.album_id = m.album_id
                                       GROUP BY album_name) AS counter)