USE codeup_test_db;


SELECT name AS 'All albums in this table: ' FROM albums; #2a
UPDATE albums SET sales = (sales * 10); #3a
SELECT sales AS 'Wow look at those sales!' FROM albums; #4a


SELECT name AS 'All albums released before 1980' FROM albums WHERE release_date < 1980; #2b
UPDATE albums SET release_date = 1800 WHERE release_date < 1980; #3b
SELECT * FROM albums WHERE release_date < 1980; #4b

SELECT name AS 'All albums by Michael Jackson' FROM albums WHERE artist = 'Michael Jackson'; #2c
UPDATE albums SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson'; #3c
SELECT * FROM albums WHERE artist = 'Peter Jackson'; #4c
