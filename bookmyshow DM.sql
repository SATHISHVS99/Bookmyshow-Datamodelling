-------------------------------------------------P1---------------------------------------------------------------
CREATE DATABASE bookmyshow;

SHOW DATABASES;

USE bookmyshow;

SELECT DATABASE();

SHOW TABLES;

DESCRIBE Theatres;
DESCRIBE Shows;

CREATE TABLE Theatres (
theatre_id INT AUTO_INCREMENT PRIMARY KEY, 
theatre_name VARCHAR(20) NOT NULL,
UNIQUE KEY unique_theatre_name (theatre_name) 
);

CREATE TABLE Shows (
show_no INT AUTO_INCREMENT PRIMARY KEY, 
theatre_name VARCHAR(20) NOT NULL,
show_name VARCHAR(30) NOT NULL,
show_date Date,
show_time INT NOT NULL,
show_type VARCHAR(2) NOT NULL,
movie_type VARCHAR(2) NOT NULL,
screen_no INT NOT NULL,
theatre_id INT NOT NULL,
UNIQUE KEY unique_show_no (show_no) 
);

INSERT INTO Theatres
values ('ABC');

INSERT INTO Theatres
values ('DEF');

INSERT INTO Theatres
values ('GHI');

DESCRIBE Theatres;


SET DATEFORMAT dmy;

INSERT INTO Shows
values ('ABC', 'Dangal', '24.12.2024', 9,'am','2D',1,1);

INSERT INTO Shows
values ('ABC', 'Baby John', '24.12.2024', 1,'pm','2D',2,1);

INSERT INTO Shows
values ('ABC', 'Mufasa', '24.12.2024', 4,'pm','3D',3,1);

INSERT INTO Shows
values ('DEF', 'Baby John', '24.12.2024', 8,'am','2D',1,2);

INSERT INTO Shows
values ('DEF', 'Mufasa', '24.12.2024', 2,'pm','3D',2,2);

INSERT INTO Shows
values ('DEF', 'Dangal', '24.12.2024', 6,'pm','2D',3,2);


DESCRIBE Shows;


-------------------------------------------------P2---------------------------------------------------------------
--Query to fetch the shows on a given date at a given theatre along with their respective show timings

SELECT show_no, show_name,screen_no , movie_type, show_date, show_time, show_type  FROM Shows
where show_date = '24.12.2024' and theatre_name = 'ABC' ; 
