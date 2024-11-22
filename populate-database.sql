-- First, let's insert some sample dealerships
INSERT INTO dealerships (dealerName, address, Phone)
VALUES
('City Motors', '123 Main St, Cityville', '555-1234'),
('Luxury Autos', '456 Park Ave, Uptown', '555-5678'),
('Green Wheels', '789 Elm St, Greenfield', '555-8765'),
('Budget Cars', '101 Oak Rd, Downtown', '555-4321'),
('Speedy Cars', '202 Pine Ln, Speedtown', '555-8764');

-- Next, we insert 10 sample vehicles
INSERT INTO vehicles (vin, vehicleYear, make, model, `vehicle type`, color, mileage, price)
VALUES
(100001, '2020', 'Toyota', 'Camry', 'Sedan', 'Blue', 25000, 25000.00),
(100002, '2021', 'Honda', 'Civic', 'Sedan', 'Red', 15000, 22000.00),
(100003, '2022', 'Ford', 'F-150', 'Truck', 'Black', 10000, 35000.00),
(100004, '2019', 'Chevrolet', 'Malibu', 'Sedan', 'Silver', 30000, 20000.00),
(100005, '2020', 'BMW', 'X5', 'SUV', 'White', 12000, 45000.00),
(100006, '2021', 'Mercedes', 'GLC', 'SUV', 'Gray', 8000, 50000.00),
(100007, '2018', 'Audi', 'A4', 'Sedan', 'Blue', 40000, 30000.00),
(100008, '2022', 'Tesla', 'Model 3', 'Electric', 'Red', 5000, 55000.00),
(100009, '2023', 'Nissan', 'Altima', 'Sedan', 'Green', 2000, 25000.00),
(100010, '2021', 'Hyundai', 'Tucson', 'SUV', 'Yellow', 15000, 27000.00);

-- Now, let's insert the cars into the inventory, associating them with random dealerships
-- (Just for the sake of demonstration, we’ll associate cars with random dealerships)

INSERT INTO inventory (vin, dealership_id)
VALUES
(100001, 1), -- Toyota Camry goes to City Motors
(100002, 2), -- Honda Civic goes to Luxury Autos
(100003, 3), -- Ford F-150 goes to Green Wheels
(100004, 4), -- Chevrolet Malibu goes to Budget Cars
(100005, 5), -- BMW X5 goes to Speedy Cars
(100006, 1), -- Mercedes GLC goes to City Motors
(100007, 2), -- Audi A4 goes to Luxury Autos
(100008, 3), -- Tesla Model 3 goes to Green Wheels
(100009, 4), -- Nissan Altima goes to Budget Cars
(100010, 5); -- Hyundai Tucson goes to Speedy Cars

-- Optionally, you can insert some sales contracts (if needed)
INSERT INTO sales_contract (date, customer_name, customer_email, vin, sales_tax, recording_fee, processing_fee, `is_financed`)
VALUES
('2024-11-20', 'John Doe', 'john.doe@example.com', 100001, 1500.00, 100.00, 50.00, TRUE),
('2024-11-19', 'Jane Smith', 'jane.smith@example.com', 100002, 1200.00, 100.00, 60.00, FALSE),
('2024-11-18', 'Sam Brown', 'sam.brown@example.com', 100003, 2000.00, 150.00, 70.00, TRUE),
('2024-11-17', 'Emily White', 'emily.white@example.com', 100004, 1000.00, 90.00, 40.00, FALSE),
('2024-11-16', 'Chris Green', 'chris.green@example.com', 100005, 2500.00, 200.00, 80.00, TRUE);
