USE codeup_test_db;


# A.
SELECT *
FROM albums;

# B.
SELECT *
FROM albums
WHERE release_date < '1980';

# C.
SELECT *
FROM albums
WHERE artist = 'Michael Jackson';

# A.1
UPDATE albums
SET sales = sales * 10;
# Multiples all sales by 10

# B.1
UPDATE albums
SET release_date = 2021
WHERE release_date < 1980;


SELECT *
FROM albums
WHERE release_date = 2021;


# C.1
UPDATE albums
SET artist = 'Peter Jackson'
WHERE id = 1;
#  Changes Michael Jackson to Peter Jackson

SELECT *
FROM albums
WHERE artist = 'Peter Jackson';