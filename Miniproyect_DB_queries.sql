#Basic queries 1
SELECT last_name, first_name, customer_id, phone FROM customers
ORDER BY last_name;

#Basic queries 2
SELECT customer_id, first_name, last_name, phone AS phone_france FROM customers
WHERE phone LIKE '+33%';

# Filter query 1
SELECT SUM(stock), area_id AS area FROM sales_items
GROUP BY area;

# Filter query 2
SELECT AVG(salary), area_id
FROM workers
GROUP BY area_id;

# Filter query 3
SELECT CONCAT(first_name, ' ', last_name) as nombre, salary
FROM workers
WHERE salary = (SELECT MAX(salary) FROM workers)
UNION ALL
SELECT CONCAT(first_name, ' ', last_name) as nombre, salary
FROM workers
WHERE salary = (SELECT MIN(salary) FROM workers);

# Filter query 4
SELECT COUNT(worker_id) as worker_count, area_id as area
FROM workers
GROUP BY area
HAVING worker_count > 4
ORDER BY worker_count DESC;

# JOIN 1 - Fidelización de clientes
SELECT customers.first_name AS name, membership.category AS category
FROM customers
INNER JOIN membership
ON customers.customer_id = membership.customer_id
ORDER BY membership.category;

# JOIN 2 - Reclamación factura asociada a trabajor
SELECT customers.first_name as client_name, workers.first_name as worker_name,
customers_invoice.invoice_c_id, customers_invoice.date
FROM customers
INNER JOIN customers_invoice
ON customers.customer_id = customers_invoice.customer_id
LEFT JOIN workers
ON customers_invoice.worker_id = workers.worker_id;

# JOIN 3 - Numero de productos vendido por cada trabajador
SELECT COUNT(sales.item_id) AS sales_count, CONCAT(workers.first_name,' ',workers.last_name) AS worker_name
FROM customers_invoice
LEFT JOIN sales
ON customers_invoice.invoice_c_id = sales.invoice_c_id
LEFT JOIN workers
ON customers_invoice.worker_id = workers.worker_id
GROUP BY worker_name;

# JOIN 4 - Ganancias generadas por cada vendedor según areas
SELECT CONCAT(workers.first_name,' ',workers.last_name) as worker_name, 
SUM(customers_invoice.amount) as total_amount,
COUNT(customers_invoice.invoice_c_id) as total_invoices,
workers.area_id, areas.name as area_name
FROM customers_invoice
RIGHT JOIN workers
ON customers_invoice.worker_id = workers.worker_id
LEFT JOIN areas
ON workers.area_id = areas.area_id
GROUP BY worker_name, workers.area_id, area_name
ORDER BY total_amount DESC;

