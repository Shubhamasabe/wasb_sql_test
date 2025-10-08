create table INVOICE
(supplier_id TINYINT,
    invoice_ammount DECIMAL(8, 2),
    due_date DATE);
	
create table SUPPLIER
(supplier_id TINYINT,
name VARCHAR);

INSERT INTO INVOICE (
	supplier_id,
	invoice_ammount,
	due_date
) VALUES
(5, 6000, '2025-12-31'),
(1, 2000, '2025-11-30'),
(1, 1500, '2025-12-31'),
(2, 500, '2025-10-31'),
(3,  6000, '2025-12-31'),
(4,  4000, '2026-03-31');

INSERT INTO SUPPLIER (
	supplier_id,
	name
) VALUES
(5, 'Party Animals'),
(1, 'Catering Plus'),
(2, 'Dave''s Discos'),
(3, 'Entertainment tonight'),
(4, 'Ice Ice Baby');