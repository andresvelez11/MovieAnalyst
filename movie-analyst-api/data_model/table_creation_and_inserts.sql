CREATE DATABASE movie_db;

USE movie_db;

CREATE TABLE publication (name VARCHAR(255) PRIMARY KEY, avatar VARCHAR(21));
CREATE TABLE reviewer (name VARCHAR(255) PRIMARY KEY, avatar VARCHAR(255), publication VARCHAR(255), FOREIGN KEY (publication) REFERENCES publication(name) ON DELETE CASCADE);
CREATE TABLE moviereview (title VARCHAR(255) PRIMARY KEY, year VARCHAR(255), score INTEGER, reviewer VARCHAR(255), FOREIGN KEY (reviewer) REFERENCES reviewer(name) ON DELETE CASCADE);

INSERT INTO publication (name, avatar) VALUES ('The Daily Reviewer', 'glyphicon-eye-open');
INSERT INTO publication (name, avatar) VALUES ('International Movie Critic', 'glyphicon-fire');
INSERT INTO publication (name, avatar) VALUES ('MoviesNow', 'glyphicon-time');
INSERT INTO publication (name, avatar) VALUES ('MyNextReview', 'glyphicon-record');
INSERT INTO publication (name, avatar) VALUES ('Movies', 'glyphicon-heart-empty');
INSERT INTO publication (name, avatar) VALUES ('TheOne', 'glyphicon-globe');
INSERT INTO publication (name, avatar) VALUES ('ComicBookHero.com', 'glyphicon-flash');

INSERT INTO reviewer (name, avatar, publication) VALUES ('Robert Smith','./images/m(1).png','The Daily Reviewer');
INSERT INTO reviewer (name, avatar, publication) VALUES ('Chris Harris','./images/m(2).png','International Movie Critic');
INSERT INTO reviewer (name, avatar, publication) VALUES ('Janet Garcia','./images/w(1).png','MoviesNow');
INSERT INTO reviewer (name, avatar, publication) VALUES ('Andrew West','./images/m(3).png','MyNextReview');
INSERT INTO reviewer (name, avatar, publication) VALUES ('Mindy Lee','./images/w(2).png','Movies');
INSERT INTO reviewer (name, avatar, publication) VALUES ('Martin Thomas','./images/m(4).png','TheOne');
INSERT INTO reviewer (name, avatar, publication) VALUES ('Anthony Miller','./images/m(5).png','ComicBookHero.com');

INSERT INTO moviereview (title, year, score, reviewer) VALUES ('Deadpool', '2016', 11, 'Robert Smith');
INSERT INTO moviereview (title, year, score, reviewer) VALUES ('Thor: Ragnarok', '2017', 7, 'Chris Harris');
INSERT INTO moviereview (title, year, score, reviewer) VALUES ('It', '2017', 8, 'Janet Garcia');
INSERT INTO moviereview (title, year, score, reviewer) VALUES ('Dunkirk', '2017', 8, 'Andrew West');
INSERT INTO moviereview (title, year, score, reviewer) VALUES ('Logan', '2017', 8, 'Mindy Lee');
INSERT INTO moviereview (title, year, score, reviewer) VALUES ('Batman V Superman', '2016', 6, 'Martin Thomas');
INSERT INTO moviereview (title, year, score, reviewer) VALUES ('Mad Max: Fury Road', '2015', 6, 'Anthony Miller');
