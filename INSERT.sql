INSERT INTO genres (title)
VALUES ('genre 1'), 
       ('genre 2'), 
       ('genre 3');

INSERT INTO artists (name)
VALUES ('artist1'), 
       ('artist 2'), 
       ('artist 3'), 
       ('artist 4');

INSERT INTO albums (name, release_year)
VALUES ('album 1', 2018), 
       ('album 2', 2019),
       ('album 3', 2020),
       ('album 4', 2021);

INSERT INTO tracks (album_id, name, duration)
VALUES (1, 'My Apocalypse', 301),
       (2, 'Миленький ты мой', 283),
       (3, 'myself by', 170),
       (4, 'My World', 345),
       (1, 'by myself by', 250),
       (2, 'beemy', 278),
       (3, 'myself', 243),
       (4, 'by myself', 370),
       (2, 'bemy self', 365), 
       (4, 'premyne', 310);


INSERT INTO collections (name, release_year)
VALUES ('collection 1', 2018),
       ('collection 2', 2019),
       ('collection 3', 2020),
       ('collection 4', 2021);

INSERT INTO genresartists (genre_id, artist_id )
VALUES (1,1),
       (1,2),
       (2,3),
       (3,4);

INSERT INTO artistsalbums (artist_id, album_id)
VALUES (1,1),
       (2,2),
       (3,3),
       (4,4);

INSERT INTO collectionstracks (collection_id, track_id)
VALUES (1,1),
       (1,3),
       (2,2),
       (3,6),
       (4,4),
       (1,5),
       (2,6),
       (3,4),
       (4,6);









