--количество исполнителей в каждом жанре;

select g.name, count(gp.genres_id = g.id) from genres g
left join genres_performers gp on gp.genres_id = g.id
group by g.name;


--количество треков, вошедших в альбомы 2019-2020 годов;

select count(*) from track t
join album a on a.id = t.album_id
where a.year between 2019 and 2020;

--средняя продолжительность треков по каждому альбому;

select a.name, AVG(t.duration) from album a
right join track t on t.album_id = a.id
group by a.name;


--все исполнители, которые не выпустили альбомы в 2020 году;

select p.name from performers p 
left join performers_album pa on p.id = pa.performers_id
left join album a on a.id = pa.album_id
where year != 2020;


--названия сборников, в которых присутствует конкретный исполнитель (выберите сами);

select c.name from collection c 
left join collection_track ct on ct.collection_id = c.id
left join track t on t.id = ct.track_id
left join performers p on t.performers_id = p.id
GROUP BY c.name, p.name
having p.name = 'Rammstein';

--название альбомов, в которых присутствуют исполнители более 1 жанра;

select a.name from album a 
left join performers_album pa ON a.id = pa.album_id 
left join performers p ON p.id = pa.performers_id 
left join genres_performers gp on p.id = gp.performers_id 
left join genres g on g.id = gp.genres_id 
group by a.name
having count(*) > 1;


--наименование треков, которые не входят в сборники;

select t.name from track t 
left join collection_track ct on ct.track_id = t.id 
where ct.track_id is null;


--исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько);

select p.name from performers p 
left join track t ON t.performers_id = p.id 
where t.duration = (select min(t2.duration) from track t2);

--название альбомов, содержащих наименьшее количество треков.

with t as (select a.name, count(*) count_all from track t 
join album a on a.id = t.album_id
group by a.name)
select name from t 
where t.count_all = (select min(count_all) from t);