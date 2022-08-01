use codeup_test_db;
DROP TABLE IF EXISTS albums;
CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(50) DEFAULT 'UNKNOWN',
    track VARCHAR(100) DEFAULT 'UNTITLED',
    genre VARCHAR(50) DEFAULT 'VARIOUS',
    sales int,
    release_date date,
    PRIMARY KEY (id)
);