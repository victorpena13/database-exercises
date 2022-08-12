use codeup_test_db;
DROP TABLE IF EXISTS albums;
CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(50) DEFAULT 'UNKNOWN',
    track VARCHAR(100) DEFAULT 'UNTITLED',
    genre VARCHAR(50) DEFAULT 'VARIOUS',
    sales varchar(50) DEFAULT 'UNKNOWN',
    release_date VARCHAR(50),
    PRIMARY KEY (id)
);

INSERT INTO albums(artist, track, genre, sales, release_date)
VALUES ('Kate Bush', 'running up that hill', 'alternative', 31, '08-05-85'),
       ('The Muffs', 'Kid''s of America', 'punk', sales , '1995'),
       ('Lana Del Rey', 'chemtrail''s over the country club', 'alternative', sales, release_date),
       (artist, 'you''re not who you were', genre, sales, release_date);



SELECT 'Kate Bush', 'running up that hill' from albums;
SELECT * FROM albums;
SELECT * FROM albums where genre = 'alternative';
SELECT* FROM albums where id = 1;
SELECT track FROM ALBUMS WHERE id = 4;

update albums
set artist = 'Pell'
where id = 4;

