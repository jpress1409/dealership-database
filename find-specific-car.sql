USE dealership;

SELECT vehicles.*, dealerships.*
FROM vehicles
INNER JOIN inventory
ON vehicles.vin = inventory.vin
INNER JOIN dealerships
ON inventory.dealership_id = dealerships.dealership_id
WHERE vehicles.make = "Toyota" AND vehicles.model = "Camry" AND vehicles.color = "Blue";
