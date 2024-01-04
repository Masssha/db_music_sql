--1.1

select name, duration from tracks
order by duration desc
limit 1;

--либо

select name, duration from tracks
where duration = (select max(duration) from tracks);

--1.2

select name from tracks_2
where duration >= '00:03:30';

--1.3

select name from collections
where date_release between '2018-01-11' and '2020-12-31';

--1.4

select name from artists
where name Not Like '% %';

--1.5

select name from tracks_2
where name ilike 'Your %'
or name ilike '% your'
or name ilike '% your %'
or name ilike 'Your'
union
select name from tracks_2
where name ilike 'Try %'
or name ilike '% Try'
or name ilike '% Try %'
or name ilike 'Try';

--2.1

select g.name, count(a.id) from artists a 
join artists_genres ag on a.id = ag.artists_id
join genres g on g.id = ag.genres_id
group by g.name
order by count(g.name);

--2.2

select count(t.id) from tracks t
join albums al on al.id = t.albums_id
where al.date_release between '2019-01-11' and '2020-12-31';

--2.3

select al.name, avg(t.duration) from tracks t
join albums al on al.id = t.albums_id
group by al.name;

--2.4

select a.name from artists a 
where a.name not in (select a.name from artists a 
    join artists_albums aa on a.id = aa.artists_id
    join albums al on al.id = aa.albums_id
    where al.date_release between '2020-01-11' and '2020-12-31');

--2.5
   
select c.name from collections c 
join collections_tracks ct on c.id = ct.collections_id
join tracks t on t.id = ct.tracks_id
join albums al on al.id = t.albums_id 
join artists_albums aa on aa.albums_id = al.id
join artists a on a.id = aa.artists_id 
where a.name like '%Bad bad not good%';

