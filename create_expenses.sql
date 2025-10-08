CREATE TABLE temp_emp (
	Employee_name varchar,
	price DECIMAL(8, 2),
	qty tinyint
);


INSERT INTO temp_emp (
	Employee_name,
	price,
	qty
) VALUES
('Alex Jacobson', 6.50, 14),
('Alex Jacobson', 11.00, 20),
('Alex Jacobson', 2.00, 18),
('Alex Jacobson', 13.00, 75),
('Andrea Ghibaudi', 300, 1),
('Darren Poynton', 40.00, 9),
('Umberto Torrielli', 17.50, 4);

create table EXPENSE as select e.employee_id,price as unit_price,qty as quantity from temp_emp ex left outer join 
EMPLOYEE e on ex.Employee_name=e.first_name || ' ' || e.last_name;
drop table temp_emp;