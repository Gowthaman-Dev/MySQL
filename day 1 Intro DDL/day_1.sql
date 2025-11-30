   -- create database 

create DATABASE sladb;
use sladb;


   -- create table
   
CREATE TABLE sladevelopers(

id INT PRIMARY KEY auto_increment,
user_id VARCHAR(40) UNIQUE,

developer_name VARCHAR(50),
developer_email VARCHAR(50),
developer_age INT(30),
developer_mobile VARCHAR(50),
createby VARCHAR(40) DEFAULT "ADMIN",
create_at DATE,
updated_in VARCHAR(30) DEFAULT "ROLE",
create_data DATETIME

)

Alter TABLE sladevelopers


CREATE TABLE communication(
id INT PRIMARY KEY AUTO_INCREMENT ,
communication_user_id VARCHAR(20) UNIQUE,
mark INT,
FOREIGN KEY (communication_user_id) REFERENCES sladevelopers (user_id)
);

CREATE TABLE aptidue(
id INT PRIMARY KEY AUTO_INCREMENT,
user_id VARCHAR (20) UNIQUE ,
mark INT 


);

ALTER TABLE sladevelopers ADD CONSTRAINT uq_developer_email UNIQUE (developer_email);

ALTER TABLE aptidue ADD CONSTRAINT fk_aptidue  FOREIGN KEY (communication_user_id) REFERENCES sladevelopers (user_id);

RENAME TABLE aptidue TO aab;
RENAME TABLE aab TO apptide ;

ALTER TABLE apptide RENAME TO apputide_new ;
ALTER TABLE apputide_new CHANGE COLUMN mark full_mark INT ;
ALTER TABLE apputide_new MODIFY COLUMN full_mark VARCHAR(20);

ALTER TABLE apputide_new ADD COLUMN join_data DATE ;