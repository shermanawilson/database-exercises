USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE IF NOT EXISTS albums
(
    id           INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist       VARCHAR(250) NOT NULL,
    name         VARCHAR(250) NOT NULL,
    release_date YEAR,
    sales        FLOAT,
    genre        VARCHAR(100),
    PRIMARY KEY (id)
);
