#CREATE DATABASE

create database customersales;
use customersales;

#CREATE TABLES

create table customers(
customerid int auto_increment primary key,
customername varchar(50),
city varchar(50));
create table products(
productid int auto_increment primary key,
productname varchar(50),
price decimal(10,2));
create table orders(
orderid int auto_increment primary key,
customerid int,
productid int,
quantity int,
orderdate date,
foreign key(customerid) references customers(customerid),
foreign key(productid) references products(productid));

#INSERT

insert into customers(customerid,customername,city)
values
(101,'Rahul','Chennai'),
(102,'Priya','Bangalore'),
(103,'Kiran','Hyderabad'),
(104,'Sneha','Mumbai'),
(105,'Arun','Delhi');
insert into products(productid,productname,price)
values
(201,'Laptop',55000),
(202,'Keyboard',1500),
(203,'Mouse',800),
(204,'Monitor',12000),
(205,'Headphones',2500);
insert into orders(orderid,customerid,productid,quantity,orderdate)
values
(1,101,201,1,'2026-01-05'),
(2,102,202,2,'2026-01-06'),
(3,103,205,1,'2026-01-07'),
(4,104,204,1,'2026-01-08'),
(5,105,203,3,'2026-01-09');

#SELECT

select*from customers;
select*from products;
select*from orders;

#WHERE

select productname,price 
from products
where price>=5000;
select customerid,productid,orderdate
from orders
where productid =201 and customerid=101;

#ORDER BY

select *from products
order by price;
select *from products
order by price desc;

#GROUP BY

select quantity,count(*) as Totalquantity
from orders
group by quantity;
select quantity,sum(productid) as Totalproduct
from orders
group by quantity;

#AGGREGATE FUNCTIONS

#COUNT
select count(*) as Totalproduct 
from products;
#SUM
select sum(price) as Totalprice
from products;
#AVERAGE
select avg(price)as Averageprice
from products;
#MAX AND MIN
select min(price) as cheapest
from products;
select max(price) as cheapest
from products;

#JOINS
#INNER JOIN
select
customers.customername,
orders.orderid
from customers
inner join orders
on customers.customerid=orders.customerid;
#inserting extra rows to show left join
insert into customers(customername)
values
('sara'),
('Reena');

#LEFT JOIN
select
customers.customername,
orders.orderid
from customers
left join orders 
on customers.customerid=orders.customerid;

#inserting rows to show right join
insert into orders(orderid)
values
(6),
(7);

#RIGHT JOIN
select
products.productname,
orders.orderid
from products
right join orders
on products.productid=orders.productid;

#FULL JOIN
select
customers.customername,
orders.orderid
from customers
left join orders 
on customers.customerid=orders.customerid
UNION
select
customers.customername,
orders.orderid
from customers
right join orders
on customers.customerid=orders.productid;

#CROSS JOIN
select
customers.customername,
products.productname 
from customers
cross join products;

#SUBQUERIES
select productname,price
from products
where price=(
select max(price)
from products);

#HAVING
select productname,sum(price) as Totalprice
from products
group by productname
having Totalprice>5000;

#VIEW FOR DATA ANALYSIS
create view CustomerOrders as
select
    C.CustomerID,
    C.CustomerName,
    C.City,
    P.ProductName,
    P.Price,
    O.Quantity,
    O.OrderDate
from Customers C
inner join Orders O
on C.CustomerID = O.CustomerID
inner join Products P
on O.ProductID = P.ProductID;
select*from CustomerOrders;

#STORED PROCEDURES

DELIMITER $$

CREATE PROCEDURE get_all_product()
BEGIN
    SELECT * FROM Products;
END $$

DELIMITER ;

CALL get_all_product();








