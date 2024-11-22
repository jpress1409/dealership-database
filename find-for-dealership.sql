USE dealership;

SELECT dealerships.dealership_id, dealerships.dealerName, inventory.vin
FROM dealerships
INNER JOIN inventory
ON dealerships.dealership_id = inventory.dealership_id
WHERE dealerships.dealership_id = 1;