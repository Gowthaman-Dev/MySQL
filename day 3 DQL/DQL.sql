use sladb;

insert into aptitude_new (aptitude_user_id,full_mark,join_data) VALUES ("USR1001","100",curdate());

select * from sladevelopers;
select * from aptitude_new;

select full_mark as totalmark from aptitude_new;

select * from sladevelopers where developer_age >= 25;


select * from sladevelopers where developer_age > 25;

select * from sladevelopers where developer_age >= 25 OR createdby = "users";

select * from sladevelopers where NOT createdby = "system";

select * from sladevelopers where developer_age BETWEEN 28 AND 30;


select * from sladevelopers where user_id LIKE "%1%";
select * from sladevelopers where developer_name LIKE "%r";

select * from sladevelopers where developer_name LIKE "%ar%"; 


select * from sladevelopers ORDER BY developer_name DESC;

select * from sladevelopers LIMIT 1;
select DISTINCT createdby from sladevelopers;


select COUNT(*) from sladevelopers;
select sum(developer_age) as Total_age from sladevelopers;
select AVG(developer_age) from sladevelopers;
select max(developer_age) from sladevelopers;

select createdby, COUNT(*) AS ADMINUSERS from sladevelopers group by createdby;

select createdby, COUNT(*) AS ADMINUSERS from sladevelopers where developer_age > 25  group by createdby;

select createdby, COUNT(*) AS ADMINUSERS from sladevelopers  group by createdby HAVING avg(developer_age) > 26

DQL
Fullscreen
use sladb;

insert into aptitude_new (aptitude_user_id,full_mark,join_data) VALUES ("USR1001","100",curdate());

select * from sladevelopers;
select * from aptitude_new;

select full_mark as totalmark from aptitude_new;

select * from sladevelopers where developer_age >= 25;


select * from sladevelopers where developer_age > 25;

select * from sladevelopers where developer_age >= 25 OR createdby = "users";

select * from sladevelopers where NOT createdby = "system";

select * from sladevelopers where developer_age BETWEEN 28 AND 30;


select * from sladevelopers where user_id LIKE "%1%";
select * from sladevelopers where developer_name LIKE "%r";

select * from sladevelopers where developer_name LIKE "%ar%"; 


select * from sladevelopers ORDER BY developer_name DESC;

select * from sladevelopers LIMIT 1;
select DISTINCT createdby from sladevelopers;


select COUNT(*) from sladevelopers;
select sum(developer_age) as Total_age from sladevelopers;
select AVG(developer_age) from sladevelopers;
select max(developer_age) from sladevelopers;

select createdby, COUNT(*) AS ADMINUSERS from sladevelopers group by createdby;

select createdby, COUNT(*) AS ADMINUSERS from sladevelopers where developer_age > 25  group by createdby;

select createdby, COUNT(*) AS ADMINUSERS from sladevelopers  group by createdby HAVING avg(developer_age) > 26
