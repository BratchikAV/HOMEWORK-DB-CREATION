CREATE TABLE IF NOT EXISTS Genre (
	id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL
);
CREATE TABLE IF NOT EXISTS Performer (
	id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL
	);
CREATE TABLE IF NOT EXISTS GenrePerformer (
	genreID INTEGER NOT NULL REFERENCES Genre(id),
	performerID INTEGER NOT NULL REFERENCES Performer(id),
	CONSTRAINT gp PRIMARY KEY (genreID, performerID)
);
CREATE TABLE IF NOT EXISTS Albom (
	id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	year VARCHAR(60) NOT NULL
	);
CREATE TABLE IF NOT EXISTS PerformerAlbom (
	performerID INTEGER NOT NULL REFERENCES Performer(id),
	albomID INTEGER NOT NULL REFERENCES Albom(id),
	CONSTRAINT pa PRIMARY KEY (performerID, albomID)
	);
CREATE TABLE IF NOT EXISTS Track (
	id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	lenght VARCHAR(60) NOT NULL,
	albom INTEGER NOT NULL UNIQUE REFERENCES Albom(id)
	);
CREATE TABLE IF NOT EXISTS Collection (
	id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	year VARCHAR(60) NOT NULL
	);
CREATE TABLE IF NOT EXISTS TrackCollection (
	trackID INTEGER NOT NULL REFERENCES Track(id),
	collectionID INTEGER NOT NULL REFERENCES Collection(id),
	CONSTRAINT tc PRIMARY KEY (trackID, collectionID)
	)

