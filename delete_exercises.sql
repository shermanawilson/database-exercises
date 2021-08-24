USE codeup_test_db;

DELETE
FROM albums
WHERE release_date > 1991;
# Delete albums that were released after 1991

DELETE
FROM albums
WHERE genre = 'Disco';
# Deleted the disco album

DELETE
FROM albums
WHERE artist = 'Whitney Houston';
#  Deleted the Whitney album

SELECT *
FROM albums;
