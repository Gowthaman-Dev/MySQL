CREATE DATABASE movie ;
use movie;

CREATE TABLE moviedetails (

id INT PRIMARY KEY AUTO_INCREMENT ,

hero_name VARCHAR(200),
heroine_name VARCHAR(200),
release_date VARCHAR(200) ,
release_countries VARCHAR(200),
hero_salary INT ,
mobile_number VARCHAR(20),
horror_movie CHAR(10),
today_date DATE

);

ALTER TABLE moviedetails MODIFY today_date DATETIME ;
UPDATE moviedetails SET hero_name ="VIJAY" ,heroine_name = "Pooja Hedge" WHERE id = 2;

DELETE FROM moviedetails WHERE id = 1;

INSERT INTO moviedetails (hero_name,heroine_name,release_date,release_countries,hero_salary,mobile_number,horror_movie,today_date) VALUES ("Gowtham","Jerlin Monisha","20-09-2004","World wide",200,"988776644","Conjuring",NOW()),("Gowtham","Jerlin Monisha","20-09-2004","World wide",200,"988776644","Conjuring",NOW()),("Gowtham","Jerlin Monisha","20-09-2004","World wide",200,"988776644","Conjuring",NOW()),("ROCKY","FAKE LOVE ","20-09-2004","World wide",200,"988776644","Conjuring",NOW());
