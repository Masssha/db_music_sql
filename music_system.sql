CREATE TABLE IF NOT EXISTS Genres (
	id SERIAL PRIMARY KEY,
	name VARCHAR(80) NOT NULL
);

CREATE TABLE IF NOT EXISTS Artists (
	id SERIAL PRIMARY KEY,
	name VARCHAR(80) NOT NULL
);

CREATE TABLE IF NOT EXISTS Artists_genres (
	id SERIAL PRIMARY KEY,
	artists_id INTEGER NOT NULL REFERENCES Artists(id),
	genres_id INTEGER NOT NULL REFERENCES Genres(id)
);

CREATE TABLE IF NOT EXISTS Albums (
	id SERIAL PRIMARY KEY,
	name VARCHAR(80) NOT null,
	date_release date
);

CREATE TABLE IF NOT EXISTS Artists_albums (
	id SERIAL PRIMARY KEY,
	artists_id INTEGER NOT NULL REFERENCES Artists(id),
	albums_id INTEGER NOT NULL REFERENCES Albums(id)
);

CREATE TABLE IF NOT EXISTS Tracks (
	id SERIAL PRIMARY KEY,
	name VARCHAR(80) NOT null,
	duration time(0),
	albums_id INTEGER NOT NULL REFERENCES Albums(id)
);

CREATE TABLE IF NOT EXISTS Collections (
	id SERIAL PRIMARY KEY,
	name VARCHAR(80) NOT null,
	date_release date
);

CREATE TABLE IF NOT EXISTS Collections_tracks (
	id SERIAL PRIMARY KEY,
	collections_id INTEGER NOT NULL REFERENCES Collections(id),
	tracks_id INTEGER NOT NULL REFERENCES Tracks(id)
);

CREATE TABLE IF NOT EXISTS Tracks_2 (
	id SERIAL PRIMARY KEY,
	name VARCHAR(80) NOT null,
	duration time(0),
	albums_id INTEGER NOT NULL REFERENCES Albums(id)
);