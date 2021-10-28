
--UC-1: Creating a database
create database payroll_service;
USE payroll_service;
--UC-2: Creating a table
create table employee_payroll(
	Id int identity(1,1) primary key,
	Name varchar (200),
	Salary float,
	StartDate date
);
--UC-3
insert into employee_payroll values
('Bill',100000.0,'2018-01-03'),
('Terisa',200000.0,'2019-11-13'),
('Charlie',300000.0,'2021-05-21')
--UC-4
select * from employee_payroll
--UC-5
select salary from employee_payroll where name = 'Bill'
select * from employee_payroll
where StartDate between cast('2019-11-13' As date) and GETDATE()
--UC-6
ALTER TABLE employee_payroll
ADD Gender char(2)
update employee_payroll set Gender = 'M' where name = 'Bill' or name = 'Charlie';
update employee_payroll set Gender = 'F' where name = 'Terisa';
--UC-7
select sum(salary) from employee_payroll where Gender='M' group by Gender;
select sum(salary) from employee_payroll  group by Gender;
select sum(salary) as 'totalSalary',Gender from employee_payroll group by Gender;
select avg(salary) as 'averageSalary',Gender from employee_payroll group by Gender;
select min(salary) as 'minimumSalary',Gender from employee_payroll group by Gender;
select max(salary) as 'maximumSalary',Gender from employee_payroll group by Gender;
select count(Gender) as 'male' from employee_payroll where Gender='M' 
select count(Gender) as 'female' from employee_payroll where Gender='F'