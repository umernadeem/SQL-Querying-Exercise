-- Comments in SQL Start with dash-dash --
--1
SELECT * from analytics where ID = 1880;
--2
SELECT id, app_name from analytics WHERE last_updated = '2018-08-01';
--3
SELECT category,  COUNT(category) from analytics GROUP BY category;
--4
SELECT * FROM analytics 
  ORDER BY reviews DESC 
  LIMIT 5;
--5
SELECT * FROM analytics 
  WHERE rating >= 4.8 
  ORDER BY reviews DESC
  LIMIT 1;

-- 6
SELECT category, AVG(rating) FROM analytics 
  GROUP BY category 
  ORDER BY avg DESC;

-- 7. Find the name, price, and rating of the most 
--     expensive app with a rating that's less than 3
SELECT app_name, price, rating FROM analytics 
  WHERE rating < 3 
  ORDER BY price DESC 
  LIMIT 1;

-- 8. Find all records with a min install not exceeding 50, that have a rating. 
--      Order your results by highest rated first.
SELECT * FROM analytics 
  WHERE min_installs <= 50 
    AND rating IS NOT NULL 
  ORDER BY rating DESC;

-- 9. Find the names of all apps that are rated less than 3 with at least 10000 reviews.
SELECT app_name FROM analytics
  WHERE rating < 3 AND reviews >= 10000;

-- 10. Find the top 10 most-reviewed apps that cost between 10 cents and a dollar.
SELECT * FROM analytics
  WHERE price BETWEEN 0.1 and 1 
  ORDER BY reviews DESC 
  LIMIT 10;

-- 11
  ORDER BY last_updated LIMIT 1;

-- 12
SELECT * FROM analytics
  ORDER BY price DESC LIMIT 1;

-- 13. Count all the reviews in the Google Play Store.
SELECT SUM(reviews) AS "All the Reviews" FROM analytics;

-- 14. Find all the categories that have more than 300 apps in them.
SELECT category FROM analytics 
  GROUP BY category 
  HAVING COUNT(*) > 300;

-- 15
SELECT app_name, reviews, min_installs,  min_installs / reviews AS proportion
  FROM analytics
  WHERE min_installs >= 100000
  ORDER BY proportion DESC
  LIMIT 1;