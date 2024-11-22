USE dealership;

SELECT vehicles.*, inventory.dealership_id, dealerships.dealerName
FROM vehicles
INNER JOIN inventory
ON vehicles.vin = inventory.vin
INNER JOIN dealerships
ON dealerships.dealership_id = inventory.dealership_id
WHERE vehicles.vin = 100001;