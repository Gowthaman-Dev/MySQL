CREATE database tea ;
use tea;

create table userdatas (
id INT PRIMARY KEY AUTO_INCREMENT,
username varchar(20) ,
mobile varchar(20),
city varchar(20),
joindate datetime
);


create table orders (
id INT PRIMARY KEY AUTO_INCREMENT ,
user_id INT ,
order_id varchar(20),
product_id varchar(20),
order_date datetime,
FOREIGN KEY (user_id) references userdatas(id)
);




create table products (
id INT PRIMARY KEY AUTO_INCREMENT ,
product_id varchar(30),
product_name varchar(30),
product_price varchar(300),
product_catogery varchar (200),
product_add_date datetime
);



select * from orders as O inner join userdatas as U on O.order_id = U.id;

select * from orders as O inner join userdatas as U on O.order_id = U.id inner join products as P on O.product_id = p.product_id ;


select * from userdatas as U left join orders as O on U.id = O.user_id;

select * from orders as O left join products as P on O.product_id = P.product_id;

select *,ifnull(P.product_id,"This is a Error Data") from orders as O left join products as P on O.product_id = P.product_id;	