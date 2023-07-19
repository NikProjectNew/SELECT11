select name, duration from list_track 
order by duration desc 
limit 1

select name from list_track 
where duration >= 210

select name from collection
where data_create between  '2018-01-01' and '2020-12-31'

select pseudonym  from list_artist
where pseudonym not like '% %'

select name  from list_track
where name like '%my%'  or name like '%мой%'

select genre.name as Жанр, COUNT(list_artist.artist_id) as Количество_исполнителей  
from genre
join genre_artist on genre.genre_id = genre_artist.genre_id
join list_artist on list_artist.artist_id = genre_artist.artist_id
group by genre.name, genre.genre_id

select album.name as Альбом, COUNT(list_track.track_id) as Количество_треков
from album
join list_track on album.album_id = list_track.album_id
where album.date_create between  '2019-01-01' and '2020-12-31'
group by album.name, album.album_id

select album.name as Альбом, avg(list_track.duration) as Средняя_длина
from list_track
join album on album.album_id = list_track.album_id
group by album.name, album.album_id

select list_artist.pseudonym as Без_альбома_2020 from list_artist
left join album_artist on list_artist.artist_id = album_artist.artist_id
left join album on album_artist.album_id = album.album_id
where album.date_create is null or album.date_create not between '2020-01-01' and '2020-12-31'
group by list_artist.pseudonym

select collection.name as Название_сборника from collection
join track_collection on collection.collection_id = track_collection.collection_id
join list_track on track_collection.track_id = list_track.track_id
join album on list_track.album_id = album.album_id
join album_artist on album.album_id = album_artist.album_id
join list_artist on album_artist.artist_id = list_artist.artist_id
where list_artist.pseudonym = 'БИ-2'
