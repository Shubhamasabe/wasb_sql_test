select e.employee_id,e.first_name || ' ' || e.last_name as employee_id
,m.manager_id,
m.first_name || ' ' || m.last_name as manager_name

 from EMPLOYEE e
left join 
(select employee_id,sum(unit_price*quantity) as total_expensed_amount from EXPENSE group by 1)ex
on e.employee_id=ex.employee_id
left join 
EMPLOYEE m
on m.employee_id=e.manager_id
where total_expensed_amount>1000