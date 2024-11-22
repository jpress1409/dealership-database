CREATE DATABASE dealership;

USE dealership;

CREATE TABLE dealerships(
  dealership_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  dealerName VARCHAR(50),
  address VARCHAR(50),
  Phone VARCHAR(12)
);

CREATE TABLE vehicles(
  vin INT NOT NULL PRIMARY KEY,
  vehicleYear VARCHAR(4),
  make VARCHAR(50),
  model VARCHAR(50),
  `vehicle type` VARCHAR(50),
  color VARCHAR(50),
  mileage INT(8),
  price DECIMAL(10,2)
);

CREATE TABLE inventory(
  vin INT NOT NULL,
  dealership_id INT NOT NULL,
  FOREIGN KEY (dealership_id) REFERENCES dealerships(dealership_id),
  FOREIGN KEY (vin) REFERENCES vehicles(vin)
);

CREATE TABLE sales_contract(
  id INT NOT NULL AUTO_INCREMENT,
  `date` DATE, 
  `customer_name` VARCHAR(100),
  customer_email VARCHAR(100),
  vin INT NOT NULL,
  FOREIGN KEY (vin) REFERENCES vehicles(vin),
  sales_tax DECIMAL(10,2),
  recording_fee DECIMAL(10,2),
  processing_fee DECIMAL(10,2),
  `is_financed` BOOLEAN,
  PRIMARY KEY(id)
);
