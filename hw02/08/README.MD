# HomeWork_02

### Задача:
Составьте запросы для определения суммы прослушиваний по жанрам, отсортированным по возрастанию количества прослушиваний.


### Решение:
```sql
SELECT genres.name AS genre, SUM(music_tracks.listening_count) AS total_listening_count
FROM music_tracks
JOIN genres ON music_tracks.genre_id = genres.id
GROUP BY genres.name
ORDER BY total_listening_count ASC;
```
