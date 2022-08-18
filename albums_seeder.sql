use codeup_test_db;
DROP TABLE IF EXISTS albums;
CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(50) DEFAULT 'UNKNOWN',
    track VARCHAR(100) DEFAULT 'UNTITLED',
    genre VARCHAR(50) DEFAULT 'VARIOUS',
    sales varchar(50) DEFAULT 'UNKNOWN',
    release_date int,
    PRIMARY KEY (id)
);

INSERT INTO albums(artist, track, genre, sales, release_date)
VALUES ('Kate Bush', 'running up that hill', '80''s', 31, 1985),
       ('The Muffs', 'Kid''s of America', 'punk', 20 , 1995),
       ('Lana Del Rey', 'chemtrail''s over the country club', 'dream pop', sales, 2021),
       (artist, 'you''re not who you were', genre, sales, 2021),
        ('Lana Del Rey', 'get free', 'dream pop', sales, 2017),
        ('Pink Floyd', 'time', 'rock', sales, 1973),
        ('Pink Floyd', 'another brick in the wall', 'rock', sales, '1979'),
        ('Pink Floyd', 'us and them', 'rock', sales, 1973);



SELECT 'Kate Bush', 'running up that hill' from albums;
SELECT * FROM albums;
SELECT * FROM albums where genre = 'alternative';
SELECT* FROM albums where id = 1;
SELECT track FROM ALBUMS WHERE id = 4;

update albums
set artist = 'Pell'
where id = 4;
delete from albums where id = 3;

