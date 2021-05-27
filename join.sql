--1.
select * from invoice
join invoice_line on invoice_line.invoice_id = invoice.invoice_id
where invoice_line.unit_price > .99;

--2.
select invoice.invoice_date, customer.first_name, customer.last_name, invoice.total 
from invoice 
join customer on customer.customer_id = invoice.customer_id;

--3. 4.
select customer.first_name, customer.last_name, employee.first_name, employee.last_name
from customer
join employee on employee.employee_id = customer.support_rep_id;


--5.
select album.title, artist.name
from album
join artist on artist.artist_id = album.artist_id;


--6.
select playlist_track.track_id
from playlist_track
join playlist on playlist.playlist_id = playlist_track.playlist_id
where playlist.name = 'Music';

--7.
select track.name
from track
join playlist_track on playlist_track.track_id = track.track_id
where playlist_track.playlist_id = 5;

--8.
select track.name, playlist.name
from track
join playlist_track on playlist_track.track_id = track.track_id
join playlist on playlist.playlist_id = playlist_track.playlist_id

--9. 
select track.name, album.title
from track 
join genre on genre.genre_id = track.genre_id
join album on album.album_id = track.album_id
where genre.name = 'Alternative & Punk'