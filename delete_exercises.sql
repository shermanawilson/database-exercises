USE codeup_test_db;

DELETE
FROM albums
WHERE release_date BETWEEN '1992' AND '2021';
# Delete albums that were released after 1991

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
