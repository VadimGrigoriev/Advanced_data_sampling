
CREATE TABLE IF NOT EXISTS album(
	album_id    SERIAL PRIMARY KEY,
	album_name  VARCHAR(60) NOT NULL,
	album_date  INTEGER NOT NULL
	            CONSTRAINT album_date_range
	            CHECK (album_date >= 1997)
);

CREATE TABLE IF NOT EXISTS music(
	music_id    SERIAL PRIMARY KEY,
	music_name  VARCHAR(60) NOT NULL,
	music_time  INTEGER NOT NULL,
	album_id    INTEGER REFERENCES album(album_id)
);

CREATE TABLE IF NOT EXISTS musician(
	musician_id    SERIAL PRIMARY KEY,
	musician_name  VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS styling(
	styling_id    SERIAL PRIMARY KEY,
	styling_name  VARCHAR(60) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS collection(
	collection_id    SERIAL PRIMARY KEY,
	collection_name  VARCHAR(60) NOT NULL,
	collection_date  INTEGER NOT NULL
	                 CONSTRAINT collection_date_range
	                 CHECK (collection_date >= 1997)
);

CREATE TABLE IF NOT EXISTS collection_music(
	collection_id  INTEGER REFERENCES collection(collection_id),
	music_id       INTEGER REFERENCES music(music_id),
	CONSTRAINT cm
	PRIMARY KEY (collection_id, music_id)
);

CREATE TABLE IF NOT EXISTS album_musician(
	album_id     INTEGER REFERENCES album(album_id),
	musician_id  INTEGER REFERENCES musician(musician_id),
	CONSTRAINT am
	PRIMARY KEY (album_id, musician_id)
);

CREATE TABLE IF NOT EXISTS musician_style(
	musician_id  INTEGER REFERENCES musician(musician_id),
	styling_id   INTEGER REFERENCES styling(styling_id),
	CONSTRAINT ms
	PRIMARY KEY (musician_id, styling_id)
);