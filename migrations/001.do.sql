CREATE DATABASE songs;

CREATE TABLE songs (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    date DATE NOT NULL
);

CREATE TABLE artists (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE song_artists (
    song_id INTEGER REFERENCES songs(id),
    artist_id INTEGER REFERENCES artists(id),
    PRIMARY KEY (song_id, artist_id)
);