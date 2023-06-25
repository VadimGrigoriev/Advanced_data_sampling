-- 1. Название и продолжительность самого длительного трека.
SELECT MAX(music_time)
  FROM music;
  
-- 2. Название треков, продолжительность которых не менее 3,5 минут (210 секунд).
SELECT music_name, music_time
  FROM music
 WHERE music_time >= 210
 ORDER BY music_time;
 
-- 3. Названия сборников, вышедших в период с 2018 по 2020 год включительно.
SELECT collection_name, collection_date
  FROM collection
 WHERE collection_date BETWEEN 2018 AND 2020
 ORDER BY collection_date;
 
-- 4. Исполнители, чьё имя состоит из одного слова.
SELECT musician_name
  FROM musician
 WHERE musician_name NOT LIKE '% %'
 ORDER BY musician_name;
 
-- 5. Название треков, которые содержат слово «мой» или «my».
SELECT music_name
  FROM music
 WHERE music_name LIKE '%my'
    OR music_name LIKE '%my%'
    OR music_name LIKE 'my%';
