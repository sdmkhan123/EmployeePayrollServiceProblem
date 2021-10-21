
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
insert into employee_payroll values
('Bill',100000.0,'2018-01-03'),
('Terisa',200000.0,'2019-11-13'),
('Charlie',300000.0,'2021-05-21')