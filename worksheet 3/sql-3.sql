show databases;
use new_schema;
drop table Customers
##Q1
create table Customers
( customerNumber int primary key,
customerName varchar(50),
contactLastName varchar(50),
contactFirstName varchar(50),
phone int,
addressLine1 varchar(50),
addressLine2 varchar(50),
city varchar(50),
state varchar(50),
postalCode int ,
country varchar (50),
salesRepEmployeeNumber int ,
creditLimit int);
drop table orders
##Q2
create table Orders
( orderNumber int primary key,
orderDate date,
requiredDate date,
shippedDate date,
status varchar (50),
comments varchar(50) ,
customerNumber int);



insert into customers values(101, 'Mohan Singh','Mohan','Singh',121212,'anukiran colony 112d','rawatnhata','kota','Rajasthan',323307,'India',01,1000);
insert into customers values(102, 'Rajkumar Saini','Rajkumar','Saini',232121,'anupratap colony','jaha','udaipur','Rajasthan',8855884,'India',02,5000);
insert into customers values(103, 'Akbar Hussain','Akbar','Hussain',5555,'bundi','paya','Singol','MadhyaPradesh',887870,'India',01,2000);
insert into customers values(104, 'Dorvin Simha','Dorvin','Simha',78788,'12 44 d','vikram nagar','Mysore','Karnatka',774740,'India',05,10000);

insert into orders values(1111, '2022-05-22','2022-06-01','2022-05-24','dispatched','on-time',101);
insert into orders values(1212, '2022-03-12','2022-03-16','2022-03-13','dispatched','on-time',102);
insert into orders values(1345, '2022-06-15','2022-06-22','2022-06-16','dispatched','before-time',103);
insert into orders values(1042, '2022-04-14','2022-10-14','2022-8-14','dispatched','delayed',104);
##Q3
select * from orders;

##Q4
select comments
from orders;

##Q5
select orderDate,
row_number() over (partition by orderDate order by orderDate) as Total_Number_of_orders_on_this_date
from orders;


##Q6

create table employees(
employeeNumber int primary key,
lastName varchar(50),
firstName varchar(50),
extension varchar(50),
email varchar (50),
officeCode int,
reportsTo varchar(50),
jobTitle varchar(50));
insert into employees values(001, 'Sharma','Rohit','sales','rohit@001gmail.com',111,'Jagdish','BDO');
insert into employees values(002, 'Teja','Ravikiran','marketing','teja@0009gmail.com',111,'Bheem','BDM');
insert into employees values(003, 'Hussain','Shah','HR','shahrule@gmail.com',190,'Prasad','HR MANAGER');
insert into employees values(004, 'Simha','Arjun','RnD','arjun@gmail.com',134,'Saini','Engineer');


select
employeeNumber, lastName, firstName
from employees;

##Q7

select orders.orderNumber,customers.customerName
from
Customers
inner join
Orders
where Customers.customerNumber=Orders.customerNumber;

##Q8
select customerName,salesRepEmployeeNumber
from customers;


##Q9
create table Payments
(
customerNumber int ,
checkNumber int,
paymentDate date,
amount int);

insert into payments values(101,112233,'2022-05-22',10000);
insert into payments values(102,223344,'2022-03-12',50000);
insert into payments values(103,334455,'2022-06-15',40000);
insert into payments values(104,991122,'2022-10-14',30000);


select paymentDate,amount
from payments;


##10

create table products
(
productCode int primary key,
productName varchar(50),
productLine int,
productScale int,
productVendor varchar(50),
productDescription varchar(50),
quantityInStock int,
buyPrice int,
MSRP int);
insert into products values(23,'HairDryer',1,12,'Philips','Hair Dryer for women',200,1000,800);
insert into products values(25,'Laptop',123,40,'HP','HP LAPTOp i5 gen 3',10,100000,80000);
insert into products values(35,'AC',45,42,'VOLTAS','3 TON SPLIT AC',2,40000,35000);
insert into products values(67,'redmi 112t',90,27,'REDMI','REDMI 112T ULTRA POWER ',77,23000,20000);


select productName, MSRP, productDescription
from products;

##Q11
select productName,productDescription
from products;


