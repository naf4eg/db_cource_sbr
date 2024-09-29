
INSERT INTO student02.artists (first_name, last_name, gender, birth_day)
VALUES ('James', 'Brown', 'male', '1933-05-03'),
       ('Elvis', 'Presley', 'male', '1935-01-08'),
       ('Aretha', 'Franklin', 'female', '1942-03-25'),
       ('Michael', 'Jackson', 'male', '1958-08-29'),
       ('Madonna', 'Louise', 'female', '1958-08-16');


--------------------------------------------------------------------------------------------------


INSERT INTO student02.genres (name)
VALUES ('Rock'),
       ('Pop'),
       ('Country'),
       ('Jazz'),
       ('Blues');


--------------------------------------------------------------------------------------------------


INSERT INTO student02.albums (year, genre_id, artists_id)
VALUES (1964, 1, 1),
       (1990, 2, 2),
       (1961, 3, 3),
       (1956, 4, 4),
       (1958, 5, 5);


--------------------------------------------------------------------------------------------------

INSERT INTO student02.music_tracks (year, time, listening_count, name, genre_id, artists_id)
VALUES (1988, 180, 2, 'Track Name', 1, 1), -- Rock, John Smith
       (1990, 240, 3, 'Another Track', 2, 2), -- Pop, Jane Doe
       (1961, 120, 1, 'Country Song', 3, 3), -- Country, James Brown
       (1956, 150, 5, 'Jazz Melody', 4, 4), -- Jazz, Elvis Presley
       (1958, 210, 4, 'Blues Rhythm', 5, 5); -- Blues, Aretha Franklin