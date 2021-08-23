USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE IF NOT EXISTS albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist_name VARCHAR(100) NOT NULL,
    release_date  DATE,
    sales DECIMAL,
    genre VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);
