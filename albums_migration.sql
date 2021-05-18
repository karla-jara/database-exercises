USE codeup_test_db;
DROP TABLE IF EXISTS albums;
-- //Create an albums table with the following columns:

-- id — auto-incrementing unsigned integer primary key
-- artist — string for storing the recording artist name
-- name — string for storing a record name
-- release_date — integer representing year record was released
-- sales — floating point value for number of records sold (in millions)
-- genre — string for storing the record's genre(s)

CREATE TABLE quotes (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist STRING,
    name  STRING,
    release_date INT DATE UNSIGNED,
    sales DOUBLE,
    genre STRING,
    PRIMARY KEY (id)
);
