-- Intermediate - Group By
-- 1. Find a count of how many tracks there are per genre. Display the genre name with the count.

select count(*), genre.name
from track
join genre on track.genre_id = genre.genre_id
group by genre.name;

-- 2. Find a count of how many tracks are the “Pop” genre and how many tracks are the “Rock” genre.

select count(*), genre.name
from track
join genre on genre.genre_id = track.genre_id
where genre.name = 'Pop' or genre.name = 'Rock'
group by genre.name;

-- 3. Find a list of all artists and how many albums they have.

select count(*), artist.name
from album
join artist on artist.artist_id = album.artist_id
group by artist.name;