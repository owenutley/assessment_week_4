-- ARTIST TABLE --

INSERT INTO artist (name)
VALUES ('Taylor Swift'),
('Jack Johnson'),
('Jordy Searcy');

SELECT * FROM artist
ORDER BY name ASC
LIMIT 5;

-- EMPLOYEE TABLE --

SELECT first_name, last_name FROM employee
WHERE city = 'Calgary';

SELECT * FROM employee
WHERE reports_to IN (
  SELECT employee_id FROM employee
  WHERE first_name = 'Nancy' AND last_name = 'Edwards'
);

SELECT COUNT(*) FROM employee
WHERE city = 'Lethbridge';

-- INVOICE TABLE --

SELECT COUNT(*) FROM invoice
WHERE billing_country = 'USA';

SELECT total FROM invoice
ORDER BY total DESC LIMIT 1;

SELECT total FROM invoice
ORDER BY total ASC LIMIT 1;

SELECT * FROM invoice
WHERE total > 5;

SELECT * FROM invoice
WHERE total < 5;

SELECT SUM(total) FROM invoice;

-- JOIN QUERIES --

SELECT invoice.* FROM invoice
JOIN invoice_line ON invoice_line.invoice_id = invoice.invoice_id
WHERE invoice_line.unit_price > 0.99;

SELECT i.invoice_date, c.first_name, c.last_name, i.total
FROM invoice i JOIN customer c ON i.customer_id = c.customer_id;

SELECT c.first_name "customer first name", c.last_name "customer last name",
e.first_name "support rep first name", e.last_name "support rep last name"
FROM customer c JOIN employee e ON c.support_rep_id = e.employee_id;

SELECT a.title, ar.name FROM album a
JOIN artist ar ON a.artist_id = ar.artist_id;

--//// EXTRA CREDIT \\\\--

-- ARTIST TABLE --
SELECT * FROM artist
ORDER BY name DESC LIMIT 10;

SELECT * FROM artist
WHERE name LIKE 'Black%';

SELECT * FROM artist
WHERE name LIKE '%Black%';

-- EMPLOYEE TABLE --

SELECT * FROM employee
ORDER BY birth_date DESC LIMIT 1;

SELECT * FROM employee
ORDER BY birth_date ASC LIMIT 1;

-- INVOICE TABLE --

SELECT COUNT(*) FROM invoice
WHERE billing_state IN ('CA', 'TX', 'AZ');

SELECT AVG(total) FROM invoice;

-- JOIN QUERIES --

SELECT pt.track_id FROM playlist_track pt
JOIN playlist p ON p.playlist_id = pt.playlist_id
WHERE p.name = 'Music';

SELECT t.name FROM track t
JOIN playlist_track pt ON t.track_id = pt.track_id
WHERE pt.playlist_id = 5;

SELECT t.name "track name", p.name "playlist name" FROM track t
JOIN playList_track pt ON t.track_id = pt.track_id
JOIN playlist p ON pt.playlist_id = p.playlist_id;

SELECT t.name "track name", a.title "album title" FROM track t
JOIN album a ON t.album_id = a.album_id
JOIN genre g ON t.genre_id = g.genre_id
WHERE g.name = 'Alternative & Punk';
