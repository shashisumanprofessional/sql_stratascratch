--ID 10353
--Management wants to analyze only employees with official job titles. Find the job titles of the employees with the highest salary. 
--If multiple employees have the same highest salary, include all their job titles.

CREATE TABLE worker (
    worker_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    salary INT,
    joining_date DATE,
    department VARCHAR(50)
);

INSERT INTO worker (worker_id, first_name, last_name, salary, joining_date, department) VALUES
(1, 'Monika', 'Arora', 100000, '2014-02-20', 'HR'),
(2, 'Niharika', 'Verma', 80000, '2014-06-11', 'Admin'),
(3, 'Vishal', 'Singhal', 300000, '2014-02-20', 'HR'),
(4, 'Amitah', 'Singh', 500000, '2014-02-20', 'Admin'),
(5, 'Vivek', 'Bhati', 500000, '2014-06-11', 'Admin'),
(6, 'Vipul', 'Diwan', 200000, '2014-06-11', 'Account'),
(7, 'Satish', 'Kumar', 75000, '2014-01-20', 'Account'),
(8, 'Geetika', 'Chauhan', 90000, '2014-04-11', 'Admin'),
(9, 'Agepi', 'Argon', 90000, '2015-04-10', 'Admin'),
(10, 'Moe', 'Acharya', 65000, '2015-04-11', 'HR'),
(11, 'Nayah', 'Laghari', 75000, '2014-03-20', 'Account'),
(12, 'Jai', 'Patel', 85000, '2014-03-21', 'HR'),
(13, 'Jura', 'Jomun', 980000, '2013-05-20', 'HR');

--
INSERT INTO worker (worker_id, first_name, last_name, salary, joining_date, department)
VALUES (14, 'Rohan', 'Mehta', 980000, '2016-07-15', 'Admin');

select w.department from worker w inner join worker y
on w.worker_id=y.worker_id 
where w.salary =(
select max(salary) from worker);
