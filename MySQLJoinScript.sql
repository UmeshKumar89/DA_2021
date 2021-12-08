show databases;
select * from customers;

select c.customerName, e.firstName
from customers as c inner join employees as e
on c.salesRepEmployeeNumber = e.employeeNumber;

select c.customerName, e.firstName
from customers as c left join employees as e
on c.salesRepEmployeeNumber = e.employeeNumber;

select c.customerName, e.firstName, c.salesRepEmployeeNumber
from customers as c inner join employees as e
on c.salesRepEmployeeNumber = e.employeeNumber;

