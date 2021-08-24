USE codeup_test_db;



SELECT *
FROM albums
WHERE artist = 'Pink Floyd';
# This will display all of the col with artist Pink Floyd

SELECT release_date
FROM albums
WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';
# Displays the year this album was released

SELECT genre
FROM albums
WHERE name = 'Nevermind';
# Displays genre for the album Nevermind

SELECT name
FROM albums
WHERE release_date BETWEEN 1990 AND 1999;
# Displays all albums released in the 90's

SELECT *
FROM albums
WHERE sales < 20;
# Displays all album details that were less than 20 mil

SELECT *
FROM albums
WHERE genre like '%Rock%';
# Displays all albums that's genres are EXCLUSIVELY Rock

