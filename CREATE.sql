CREATE TABLE IF NOT EXISTS Genres (
    id SERIAL PRIMARY KEY,
    title VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS Artists (
    id SERIAL PRIMARY KEY,
    name VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS GenresArtists (
    genre_id INTEGER REFERENCES Genres(id),
    artist_id INTEGER REFERENCES Artists(id),
    CONSTRAINT PK_GenresArtists PRIMARY KEY (genre_id, artist_id)
);

CREATE TABLE IF NOT EXISTS Albums (
    id SERIAL PRIMARY KEY,
    name VARCHAR(60) NOT NULL,
    release_year INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS ArtistsAlbums (
    artist_id INTEGER REFERENCES Artists(id),
    album_id INTEGER REFERENCES Albums(id),
    CONSTRAINT PK_ArtistsAlbums PRIMARY KEY (artist_id, album_id)
);

CREATE TABLE IF NOT EXISTS Tracks (
    id SERIAL PRIMARY KEY,
    album_id INTEGER REFERENCES Albums(id),
    name VARCHAR(60) NOT NULL,
    duration INT NOT NULL CHECK (duration > 0)
);

CREATE TABLE IF NOT EXISTS Collections (
    id SERIAL PRIMARY KEY,
    name VARCHAR(60) NOT NULL,
    release_year INTEGER NOT NULL  
);

CREATE TABLE IF NOT EXISTS CollectionsTracks (
    collection_id INTEGER REFERENCES Collections(id),
    track_id INTEGER REFERENCES Tracks(id),
    CONSTRAINT PK_CollectionTracks PRIMARY KEY (collection_id, track_id)
);

















