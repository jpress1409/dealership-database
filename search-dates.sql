USE dealership;

SELECT sales_contract.*, dealerships.*
FROM sales_contract
INNER JOIN inventory
ON sales_contract.vin = inventory.vin
INNER JOIN dealerships
ON inventory.dealership_id = dealerships.dealership_id
WHERE sales_contract.date BETWEEN '2024-11-17' AND '2024-11-20';