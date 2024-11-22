USE dealership;

CREATE TABLE lease_contract(
id int NOT NULL AUTO_INCREMENT,
`date` date,
`customer_name` VARCHAR(100),
customer_email VARCHAR(100),
vin int NOT NULL,
FOREIGN KEY (vin) REFERENCES vehicles(vin),
`expected_ending_value` DECIMAL,
lease_fee DECIMAL,
PRIMARY KEY (id));

INSERT INTO lease_contract (`date`, `customer_name`, customer_email, vin, `expected_ending_value`, lease_fee)
VALUES
('2024-11-15', 'Alice Johnson', 'alice.johnson@example.com', 100001, 15000.00, 350.00), 
('2024-11-16', 'Bob Smith', 'bob.smith@example.com', 100002, 12000.00, 250.00),   
('2024-11-17', 'Charlie Brown', 'charlie.brown@example.com', 100003, 20000.00, 500.00), 
('2024-11-18', 'Diana White', 'diana.white@example.com', 100004, 10000.00, 280.00), 
('2024-11-19', 'Evan Green', 'evan.green@example.com', 100005, 25000.00, 600.00); 
