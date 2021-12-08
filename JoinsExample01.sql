CREATE TABLE members (
    member_id INT AUTO_INCREMENT,
    name VARCHAR(100),
    PRIMARY KEY (member_id)
);

CREATE TABLE committees (
    committee_id INT AUTO_INCREMENT,
    name VARCHAR(100),
    PRIMARY KEY (committee_id)
);

INSERT INTO members(name)
VALUES('John'),('Jane'),('Mary'),('David'),('Amelia');

INSERT INTO committees(name)
VALUES('John'),('Mary'),('Amelia'),('Joe');

SELECT * FROM members;

SELECT * FROM committees;

SELECT 
    m.member_id, 
    m.name AS member, 
    c.committee_id, 
    c.name AS committee
FROM
    members m
INNER JOIN committees c ON c.name = m.name;

# selfe Join Query on Employees Table

select * from employees;
select 
concat(m.lastName, ',', m.firstName) AS Manager,
concat(e.lastName, ',', e.firstName) AS 'Direct Report'
from employees e
inner join employees m ON
m.employeeNumber = e.reportsTo
order by manager;



