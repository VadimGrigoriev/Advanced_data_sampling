INSERT INTO musician
VALUES (1, 'Nickelback'),
	   (2, 'Imanbek'),
	   (3, 'A.C.T.'),
	   (4, 'Imagine Dragons'),
	   (5, 'Lana Del Rey'),
	   (6, 'The Weeknd'),
	   (7, 'Lil Wayne');
	   
INSERT INTO styling
VALUES (1, 'Рок'),
	   (2, 'Прогрессивный рок'),
	   (3, 'Поп-рок'),
	   (4, 'Инди-поп'),
	   (5, 'R&B'),
	   (6, 'Хип-хоп');
	   
	   
INSERT INTO album 
VALUES (1, 'Summertime Sadness', 2021),
	   (2, 'Dark Horse', 2008),
	   (3, 'Happy', 2014),
	   (4, 'Night Visions', 2013),
	   (5, 'Beauty Behind The Madness', 2015),
	   (6, 'The Highlights', 2021),
	   (7, 'Believer', 2019);


INSERT INTO music 
VALUES (1, 'Summertime', 265, 1),
	   (2, 'If Today Was Your Last Day', 249, 2),
	   (3, 'Happy', 232, 3),
	   (4, 'Demons', 177, 4),
	   (5, 'Can`t feel my face', 213, 5),
	   (6, 'Save Your Tears', 215, 6),
	   (7, 'Blinding Lights', 200, 6),
	   (8, 'Believer', 219, 7);


INSERT INTO collection
VALUES (1, 'Lite Music', 2021),
	   (2, 'Happy Music', 2018),
	   (3, 'Rock Music', 2022),
	   (4, 'Sad Music', 2021);


INSERT INTO collection_music
VALUES (1, 4),
 	   (1, 6),
 	   (1, 8),
 	   (2, 1),
 	   (2, 3),
 	   (2, 7),
 	   (3, 2),
 	   (3, 3),
 	   (4, 4),
 	   (4, 6);


INSERT INTO album_musician
VALUES (1, 2),
	   (1, 5),
	   (2, 1),
	   (3, 3),
	   (4, 4),
	   (5, 6),
	   (6, 6),
	   (7, 4),
	   (7, 7);


INSERT INTO musician_style
VALUES (1, 1),
	   (2, 1),
	   (3, 2),
	   (4, 3),
	   (5, 4),
	   (6, 5),
	   (7, 6);