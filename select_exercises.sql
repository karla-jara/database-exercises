USE codeup_test_db;

SELECT 'album names by Pink Floyd' AS 'You are now viewing: ';
SELECT name FROM albums WHERE artist = 'Pink Floyd';

SELECT 'The year Sgt. Pepper''s Lonely Hearts Club Band was released' AS 'You are now viewing: ';
SELECT release_date FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT 'The genre for Nevermind' AS 'is stated below: ';
SELECT genre FROM albums WHERE name = 'Nevermind';

SELECT name AS 'These albums have less than 20 million record sales' FROM albums WHERE sales < 2000000;
SELECT name FROM albums WHERE sales < 2000000;

SELECT * AS 'These records have a ''Rock'' genre ' FROM albums WHERE genre = 'rock';


