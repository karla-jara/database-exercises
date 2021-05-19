USE codeup_test_db;

SELECT 'album names by Pink Floyd' AS 'You are now viewing: ';
SELECT name FROM albums WHERE artist = 'Pink Floyd';