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
VALUES ('Kate Bush', 'running up that hill', 31, 'alternative', '08-05-85');
