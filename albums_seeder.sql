USE codeup_test_db;

TRUNCATE albums;

INSERT INTO albums(artist, name, release_date, sales, genre)
VALUES ('Michael Jackson', 'Thriller', '1982', 47.9, 'Pop'),
       ('AC/DC', 'Back in Black', '1980', 29.6, 'Hard Rock'),
       ('Meat Loaf', 'Bat Out of Hell', '1977', 21.7, 'Hard Rock'),
       ('Whitney Houston', 'The Bodyguard', '1992', 32.4, 'R&B'),
       ('Pink Floyd', 'The Dark Side of the Moon', '1973', 32.4, 'Progressive Rock'),
       ('Eagles', 'Their Greatest Hits', '1976', 24.4, 'Country Rock'),
       ('Bee Gees', 'Saturday Night Fever', '1977', 41.2, 'Disco'),
       ('Fleetwood Mac', 'Rumours', '1977', 21.6, 'Soft Rock'),
       ('Shania Twain', 'Come On Over', '1977', 27.9, 'Pop'),
       ('Led Zeppelin IV', 'Led Zeppelin IV', '1978', 14.4, 'Rock'),
       ('Alanis Morissette', 'Jagged Little Pill', '1995', 17, 'Alternative Rock'),
       ('Michael Jackson', 'Dangerous', '1991', 29.6, 'Alternative Rock'),
       ('Celine Dion', 'Falling into You', '1996', 21.1, 'Soft Rock'),
       ('Eagles', 'Hotel California', '1976', 31.5, 'Soft Rock'),
       ('The Beatles', 'Sgt. Pepper''s Lonely Hearts Club Band', '1967', 18.2, 'Rock'),
       ('Adele', '21', '2011', 19.5, 'Pop'),
       ('Madonna', 'The Immaculate Collection', '1967', 19.8, 'Pop'),
       ('Celine Dion', 'Let''s Talk about Love', '1997', 19.3, 'Soft Rock'),
       ('Metallica', 'Metallica', '1991', 25.2, 'Heavy Metal'),
       ('The Beatles', '1', '2000', 23.5, 'Rock'),
       ('The Beatles', 'Abbey Road', '1969', 14.4, 'Rock'),
       ('ABBA', 'Gold: Greatest Hits', '1992', 23, 'Pop'),
       ('Bruce Springsteen', 'Born in the U.S.A.', '1984', 19.6, 'Heartland Rock'),
       ('Pink Floyd', 'The Wall', '1979', 18.1, 'Progressive Rock'),
       ('James Horner', 'Titanic: Music from the Motion Picture', '1997', 18.1, 'Film Score'),
       ('Dire Straits', 'Brothers in Arms', '1985', 17.7, 'Blues'),
       ('Nirvana', 'Nevermind', '1997', 18.1, 'Grunge'),
       ('Guns N'' Roses', 'Appetite for Destruction', '1987', 21.9, 'Hard Rock'),
       ('Elton John', 'Goodbye Yellow Brick Road', '1973', 8.5, 'Pop')


SELECT *
FROM albums;