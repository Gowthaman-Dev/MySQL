use hospital ;
select avg(salary) from hospital_details;
select * from hospital_details where salary > (select avg(salary) from hospital_details) ;

select sum(salary) from hospital_details ;
select * from hospital_details where salary > (select sum(salary) from hospital_details);

select min(salary) from hospital_details;

select * from hospital_details where salary = (select min(salary) from hospital_details);



select department from hospital_details;

select doctor_name from hospital_details where department in (select department from hospital_details);

select department,max(salary) from hospital_details group by department;

select * from hospital_details as e where (e.department,e.salary) in (select department , max(salary) from hospital_details group by department )
