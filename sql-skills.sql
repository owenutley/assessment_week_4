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

