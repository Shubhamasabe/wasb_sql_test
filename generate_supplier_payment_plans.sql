select 
i.supplier_id,s.name as  supplier_name, sum(invoice_ammount) as payment_amount, sum(invoice_ammount) over(partition by i.supplier_id) as  balance_outstanding,due_date as payment_date

from INVOICE i 
left outer join 
SUPPLIER s
on i.supplier_id=s.supplier_id
group by 1,2,due_date