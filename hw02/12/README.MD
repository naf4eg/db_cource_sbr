# HomeWork_02

### Задача:
Добавьте в список жанров несколько новых жанров. Напишите JOIN запросы для таблиц исполнители и песни: INNER JOIN, LEFT OUTER JOIN, RIGHT OUTER JOIN, FULL JOIN
Добавьте в отчет результат выполнения запроса.


### Решение:
```sql
INSERT INTO genres (name) VALUES ('Electronic'), ('Indie'), ('Folk'), ('Reggae');


SELECT artists.id, artists.first_name, artists.last_name, music_tracks.name
FROM artists
INNER JOIN music_tracks ON artists.id = music_tracks.artists_id;

SELECT artists.id, artists.first_name, artists.last_name, music_tracks.name
FROM artists
LEFT OUTER JOIN music_tracks ON artists.id = music_tracks.artists_id;

SELECT artists.id, artists.first_name, artists.last_name, music_tracks.name
FROM artists
RIGHT OUTER JOIN music_tracks ON artists.id = music_tracks.artists_id;

SELECT artists.id, artists.first_name, artists.last_name, music_tracks.name
FROM artists
FULL JOIN music_tracks ON artists.id = music_tracks.artists_id;
```
