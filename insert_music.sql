insert into genres (name)
values ('rock'),
('jazz'),
('pop'),
('indierock');

insert into artists (name)
values ('Michael Jackson'),
('Skin'),
('Nirvana'),
('Bad bad not good');

insert into albums (name, date_release)
values ('Thriller', '2019-06-16'),
('Fleshwounds', '2018-06-16'),
('Nevermind', '2020-06-16'),
('IV', '2016-06-16');

insert into tracks (name, duration, albums_id)
values ('Thriller', '00:03:43', 1),
('Faithfulness', '00:04:43', 2),
('ll Try', '00:02:43', 2),
('Smells Like Teen Spirit', '00:04:43', 3),
('Come as You Are', '00:02:43', 3),
('In Your Eyes', '00:02:43', 4),
('Time Moves Slow', '00:01:43', 4);

insert into collections (name, date_release)
values ('For a sleep', '2019-06-16'),
('For a dishwashing', '2018-06-16'),
('For a walk', '2020-06-16'),
('For a work', '2016-06-16');

insert into artists_genres (artists_id, genres_id)
values (1, 2),
(2, 2),
(2, 1),
(3, 2),
(4, 3),
(4, 1);

insert into artists_albums (artists_id, albums_id)
values (1, 1),
(2, 2),
(3, 3),
(4, 4);

insert into collections_tracks (collections_id, tracks_id)
values (1, 5),
(1, 6),
(1, 7),
(2, 1),
(2, 2),
(2, 3),
(3, 6),
(3, 7),
(4, 1),
(4, 2),
(4, 3),
(4, 4);

