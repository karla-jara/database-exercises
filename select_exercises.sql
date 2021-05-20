USE codeup_test_db;

SELECT 'album names by Pink Floyd' AS 'You are now viewing: ';
SELECT name FROM albums WHERE artist = 'Pink Floyd';

SELECT 'The year Sgt. Pepper''s Lonely Hearts Club Band was released' AS 'You are now viewing: ';
SELECT release_date FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT 'The year Sgt. Pepper''s Lonely Hearts Club Band was released' AS 'You are now viewing: ';
SELECT genre FROM albums WHERE name = 'Nevermind';