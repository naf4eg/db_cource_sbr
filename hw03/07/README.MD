# HomeWork_03

### Задача:
Составьте запрос определения среднего числа скачиваний у авторов.

Добавьте результаты выполнения в отчет.


### Решение:
```sql
select b.author_id, avg(b.downloads) from student02.books b 
group by b.author_id 
```
Результат<br/>
![Результат](result.png)