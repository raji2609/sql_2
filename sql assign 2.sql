create database travels;
use travels;
show databases;

create table travels (
travel_id int primary key,
customer_name varchar(100) not null,
destination varchar(100) not null,
tarvel_date date not null,
return_date date ,
price decimal(10,2) check (price > 0),
booking_status varchar(20) default 'pending',
constraint chk_dates check (return_date is null)
);
desc travels;
insert into travels 
(travel_id, customer_name, destination, travel_date, return_date, price, booking_status) 
values
(1, 'ravi', 'chennai', '04-03-2026', '07-03-2026', 1000.00, 'confirmed'),
(2, 'mohan', 'kerala', '06-03-2026', '09-03-2026', 1500.00, 'pending'),
(3, 'raj', 'madurai', '07-03-2026', '10-03-2026',  850.00, 'confirmed');
select * from travels;