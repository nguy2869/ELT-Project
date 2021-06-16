-- Create tables for raw data to be loaded into
CREATE TABLE spotify_2000 (
Song_ID INT PRIMARY KEY,
Title TEXT,
Artist TEXT,
Year_Released INT
);

CREATE TABLE spotify_2010 (
Song_ID INT PRIMARY KEY,
Title TEXT,
Artist TEXT,
Year_Released INT
);

CREATE TABLE billboard (
Song_ID INT PRIMARY KEY,
Title TEXT,
Artist TEXT,
Year_Released INT
);

CREATE TABLE rollingstones (
Song_ID INT PRIMARY KEY,
Title TEXT,
Artist TEXT,
Year_Released INT
);

CREATE TABLE combined_data as
SELECT *
FROM spotify_2000
UNION
SELECT *
FROM spotify_2010
UNION
SELECT *
FROM billboard
UNION
SELECT *
FROM rollingstones;

SELECT * FROM combined_data ORDER BY song_id;