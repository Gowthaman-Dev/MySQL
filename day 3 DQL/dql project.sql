CREATE DATABASE hospital;
use hospital;

CREATE TABLE hospital_details(
id INT PRIMARY KEY AUTO_INCREMENT ,
doctor_name VARCHAR(20),
department VARCHAR(30),
salary INT ,
age INT 

);

INSERT INTO hospital_details(doctor_name,department,salary,age) VALUES
('Jerlin Monisha', 'IT', 50000,21),
('Gowtham', 'IT', 60000,24),
('Mani', 'HR', 45000,29),
('Arun', 'HR', 48000,34),
('Vijay', 'IT', 55000,32),
('Siva', 'Finance', 43000,41);

select * from hospital_details;

DESC hospital_details;
ALTER TABLE hospital_details ADD age INT;

SELECT * from hospital_details where age >= 26 OR doctor_name ="gowtham";

SELECT * FROM hospital_details WHERE age BETWEEN 24 AND 30; 

SELECT * FROM hospital_details WHERE id LIKE "%4%";


SELECT * FROM hospital_details ORDER BY age ASC;

SELECT * FROM hospital_details LIMIT 3;

SELECT DISTINCT doctor_name,age,salary from hospital_details;

SELECT count(salary)as total_member FROM  hospital_details;

SELECT sum(salary) as total_id from hospital_details;

SELECT AVG(salary) as avarage_salary from hospital_details;


SELECT min(age) as minimum_age from hospital_details;

SELECT max(age) as maximum_age from hospital_details;

select age, sum(salary) as total from hospital_details group by age;

select doctor_name, count(*) as total from hospital_details where age = 21 group by doctor_name ;

select doctor_name , count(*) as adminiter from hospital_details group by doctor_name having avg(age)=21;

select doctor_name , min(age) as small_age , max(age) as big_age from hospital_details group by doctor_name;

select doctor_name , count(*) as total from hospital_details group by doctor_name having avg(salary) > 50000;





