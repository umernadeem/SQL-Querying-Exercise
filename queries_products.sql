-- Comments in SQL Start with dash-dash --
--1
INSERT INTO products
  (name, price, can_be_returned)
VALUES
  ('chair', 44.00, 'f');
--2
INSERT INTO products
  (name, price, can_be_returned)
VALUES
  ('stool', 25.99, 't');
INSERT 0 1
--3
INSERT INTO products
  (name, price, can_be_returned)
VALUES
  ('table', 124.00, 'f');
--4
SELECT * from products;
--5
SELECT name from products;
--6
SELECT name, price from products;
--7
INSERT INTO products
  (name, price, can_be_returned)
VALUES
  ('basketball', 42.00, 'f');
--8
SELECT name, can_be_returned from products where can_be_returned = 't';
--9
SELECT name, price from products where price < 44;
--10
SELECT name, price from products where price < 99.99 AND price > 22.5;
--11
UPDATE products SET price = price-20;
--12
DELETE FROM products where price < 25;
--13
DELETE FROM products where price < 25;
--14


