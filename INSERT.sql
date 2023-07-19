insert into genre (name)
values ('Rock')

insert into genre (name)
values ('Pop')

insert into genre (name)
values ('Techno')

insert into list_track  (track_id, name, duration, Album_id)
values (1, 'Another Brick', '239', 1)

drop table list_track cascade

CREATE TABLE IF NOT EXISTS list_track (
	track_id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	duration INTEGER CHECK (duration < 600),
	album_id INT REFERENCES album (album_id)
);

insert into list_track  (track_id, name, duration, Album_id)
values (2, 'Чужое горе', '205', 4)

insert into list_track  (track_id, name, duration, Album_id)
values (3, 'Уроки любви', '315', 4)

select * from list_track

insert into list_track  (track_id, name, duration, Album_id)
values (4, 'Нас догонит любовь', '248', 4)

insert into list_track  (track_id, name, duration, Album_id)
values (5, 'Пекло', '296', 5)

insert into list_track  (track_id, name, duration, Album_id)
values (6, 'Депрессия', '252', 5)

insert into list_track  (track_id, name, duration, Album_id)
values (7, 'Feel so good', '145', 6)

insert into list_track  (track_id, name, duration, Album_id)
values (8, 'Lose control', '140', 6)

insert into track_collection (track_id , collection_id)
VALUES (1, 1), (2, 2),(3, 3),(4, 4),(5, 1), (6, 2), (7, 3), (8, 4);

select * from track_collection

insert into genre_artist (genre_id , artist_id)
VALUES (1, 2), (1, 3),(2, 5),(3, 1),(1, 4);

insert into album_artist (artist_id , album_id)
VALUES (1, 6), (2, 1),(3, 4),(4, 5);