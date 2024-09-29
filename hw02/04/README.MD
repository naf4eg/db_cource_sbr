# HomeWork_02

### Задача:
Составьте запросы для поиска исполнителей, у которых нет ни одного трека в жанре N (например, Country).
Добавьте в отчер результат выполнения запроса.


### Решение:
```sql
select a.* from student02.music_tracks mt 
left join student02.artists a on a.id = mt.artists_id 
where mt.genre_id not in (select g.id from student02.genres g where g.name = 'Country')
```

Результат<br/>
![Результат](result.png)