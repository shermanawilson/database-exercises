USE codeup_test_db;

SELECT name
FROM albums
WHERE release_date > '1991';
# Album names that were released after 1991

DELETE
FROM albums
WHERE id = 7;
# Deleted the disco album

DELETE
FROM albums
WHERE id = 4;
#  Deleted the Whitney album

SELECT *
FROM albums;
