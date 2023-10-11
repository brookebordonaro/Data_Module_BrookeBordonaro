CREATE TABLE stars (id INTEGER PRIMARY KEY AUTOINCREMENT, first TEXT, last TEXT, age INTEGER, spouse_id INTEGER);

INSERT INTO stars (first, last, age, spouse_id) VALUES ("Brad", "Pitt", 40, 2);
INSERT INTO stars (first, last, age, spouse_id) VALUES ("Angelina", "Jolie", 38, 1);
INSERT INTO stars (first, last, age, spouse_id) VALUES ("Jennifer", "Garner", 35, 4);
INSERT INTO stars (first, last, age, spouse_id) VALUES ("Ben", "Affleck", 39, 3);

CREATE TABLE movies (id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT, release_year INTEGER, star_id INTEGER);

INSERT INTO movies (title, release_year, star_id) VALUES ("Fight Club", 1997, 1);
INSERT INTO movies (title, release_year, star_id) VALUES ("Girl, Interrupted", 1995, 2);
INSERT INTO movies (title, release_year, star_id) VALUES ("Gone Girl", 2007, 4);
INSERT INTO movies (title, release_year, star_id) VALUES ("13 Going on 30", 2004, 3);
INSERT INTO movies (title, release_year, star_id) VALUES ("Thelma and Louise", 1990, 1);
INSERT INTO movies (title, release_year, star_id) VALUES ("Lara Croft: Tomb Raider", 2000, 2);
INSERT INTO movies (title, release_year, star_id) VALUES ("The Accountant", 2005, 4);
INSERT INTO movies (title, release_year, star_id) VALUES ("Ghosts of Girlfriends Past", 2009, 3);
INSERT INTO movies (title, release_year, star_id) VALUES ("Valentine's Day", 2010, 3);
INSERT INTO movies (title, release_year, star_id) VALUES ("Shark Tale", 2004, 2);

SELECT * FROM stars;
SELECT * FROM movies;

SELECT stars.first , stars.last, spouses.first as spouse_first, spouses.last as spouse_last FROM stars JOIN stars spouses ON stars.spouse_id = spouses.id;

SELECT movies.title, stars.first, stars.last FROM movies JOIN stars ON stars.id = movies.star_id ORDER BY stars.last;