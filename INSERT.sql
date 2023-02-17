-- Исполнители (10)

insert into performers (name)
values ('Дайте танк(!)');

insert into performers (name)
values ('Rammstein');

insert into performers (name)
values ('The Hatters');

insert into performers (name)
values ('Король и Шут');

insert into performers (name)
values ('Сплин');

insert into performers (name)
values ('Наутилус Помпилиус');

insert into performers (name)
values ('Елка');

insert into performers (name)
values ('Imagine Dragons');

insert into performers (name)
values ('Marilyn Manson');

insert into performers (name)
values ('Twenty One Pilots');


-- Жанры (5)

insert into genres (name)
values ('Rock');

insert into genres (name)
values ('Indie');

insert into genres (name)
values ('Pop');

insert into genres (name)
values ('Folk');

insert into genres (name)
values ('Reggae');


-- Альбомы (10)

insert into album (name, year)
values ('На вырост', 2018);

insert into album (name, year)
values ('Полная шляпа', 2017);

insert into album (name, year)
values ('Камнем по голове', 1996);

insert into album (name, year)
values ('Обман зрения', 2012);

insert into album (name, year)
values ('Крылья', 1995);

insert into album (name, year)
values ('Все зависит от нас самих', 2014);

insert into album (name, year)
values ('Evolve', 2017);

insert into album (name, year)
values ('WE ARE CHAOS', 2020);

insert into album (name, year)
values ('Vessel', 2013);

insert into album (name, year)
values ('Mutter', 2001);


-- Треки (20)

insert into track (album_id, performers_id, name, duration)
values (1, 1, 'Мы', '00:02:48');

insert into track (album_id, performers_id, name, duration)
values (1, 1, 'Вы', '00:03:02');

insert into track (album_id, performers_id, name, duration)
values (2, 3, 'Сильная женщина', '00:03:10');

insert into track (album_id, performers_id, name, duration)
values (2, 3, 'Наружу изнутри', '00:03:51');

insert into track (album_id, performers_id, name, duration)
values (3, 4, 'Камнем по голове', '00:02:37');

insert into track (album_id, performers_id, name, duration)
values (3, 4, 'Дурак и молния', '00:01:54');

insert into track (album_id, performers_id, name, duration)
values (4, 6, 'Крылья', '00:03:45');

insert into track (album_id, performers_id, name, duration)
values (4, 6, 'Дыхание', '00:03:39');

insert into track (album_id, performers_id, name, duration)
values (5, 5, 'Чудак', '00:02:29');

insert into track (album_id, performers_id, name, duration)
values (5, 5, 'Дочь самурая', '00:03:36');

insert into track (album_id, performers_id, name, duration)
values (6, 7, 'Всё зависит от нас', '00:04:01');

insert into track (album_id, performers_id, name, duration)
values (7, 8, 'Believer', '00:03:24');

insert into track (album_id, performers_id, name, duration)
values (7, 8, 'Thunder', '00:03:07');

insert into track (album_id, performers_id, name, duration)
values (7, 8, 'Whatever It Takes', '00:03:21');

insert into track (album_id, performers_id, name, duration)
values (8, 9, 'WE ARE CHAOS', '00:04:00');

insert into track (album_id, performers_id, name, duration)
values (8, 9, 'HALF-WAY & ONE STEP FORWARD', '00:03:16');

insert into track (album_id, performers_id, name, duration)
values (9, 10, 'House of Gold', '00:02:43');

insert into track (album_id, performers_id, name, duration)
values (9, 10, 'Fake You Out', '00:03:51');

insert into track (album_id, performers_id, name, duration)
values (10, 2, 'Ich Will', '00:03:37');

insert into track (album_id, performers_id, name, duration)
values (10, 2, 'Links 2 3 4', '00:03:36');

delete from track
where performers_id is not NULL;
-- Сборники (8)

insert into collection  (name, year)
values ('Универсальный саундтрек к концу света', 2020);

insert into collection  (name, year)
values ('Ламповый вечер', 2023);

insert into collection  (name, year)
values ('Для бодрости духа', 2020);

insert into collection  (name, year)
values ('Дикая мята', 2018);

insert into collection  (name, year)
values ('League of Legends', 2021);

insert into collection  (name, year)
values ('MAXIDROM', 2019);

insert into collection  (name, year)
values ('Верните мой 2011', 2021);

insert into collection  (name, year)
values ('Верните мой 2001', 2021);

-- Жанры-исполнители 

insert into genres_performers
values (1, 1);

insert into genres_performers
values (2, 1);

insert into genres_performers
values (1, 2);

insert into genres_performers
values (1, 3);

insert into genres_performers
values (1, 4);

insert into genres_performers
values (1, 5);

insert into genres_performers
values (1, 6);

insert into genres_performers
values (1, 8);

insert into genres_performers
values (1, 9);

insert into genres_performers
values (1, 10);

insert into genres_performers
values (2, 3);

insert into genres_performers
values (3, 3);

insert into genres_performers
values (3, 7);

-- Исполнитель-альбом

insert into performers_album 
values (1, 1);

insert into performers_album 
values (2, 10);

insert into performers_album 
values (3, 2);

insert into performers_album 
values (4, 3);

insert into performers_album 
values (5, 5);

insert into performers_album 
values (6, 4);

insert into performers_album 
values (7, 6);

insert into performers_album 
values (8, 7);

insert into performers_album 
values (9, 8);

insert into performers_album 
values (10, 9);

-- Коллекции-треки

insert into collection_track
values (1, 15);

insert into collection_track
values (1, 16);

insert into collection_track
values (2, 4);

insert into collection_track
values (2, 7);

insert into collection_track
values (2, 11);

insert into collection_track
values (3, 12);

insert into collection_track
values (3, 13);

insert into collection_track
values (3, 14);

insert into collection_track
values (3, 19);

insert into collection_track
values (3, 20);

insert into collection_track
values (3, 4);

insert into collection_track
values (4, 1);

insert into collection_track
values (4, 2);

insert into collection_track
values (5, 17);

insert into collection_track
values (5, 18);

insert into collection_track
values (6, 19);

insert into collection_track
values (6, 20);

insert into collection_track
values (7, 11);

insert into collection_track
values (8, 9);

insert into collection_track
values (8, 10);