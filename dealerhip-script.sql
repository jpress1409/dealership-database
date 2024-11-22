CREATE DATABASE dealership;

CREATE TABLE dealerships(
dealership_id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
dealerName VARCHAR(50),
address VARCHAR(50),
Phone VARCHAR(12));

CREATE TABLE vehicles(
vin int NOT NULL PRIMARY KEY,
vehicleYear VARCHAR(4),
make VARCHAR(50),
model VARCHAR(50),
`vehicle type` VARCHAR(50),
color VARCHAR(50),
milage INT(8),
price FLOAT(9)
);

CREATE TABLE inventory(
FOREIGN KEY (dealership_id) REFERENCES dealerhsips(dealership_id),
FOREIGN KEY (vin) REFERENCES vehichles(vin));

CREATE TABLE sales_contract(
id int NOT NULL AUTO_INCREMENT,
`date` DATE, 
`customeR_name` VARCHAR(100),
customer_email VARCHAR(100),
FOREIGN KEY (vin) REFERENCES vehicles(vin),
sales_tax FLOAT(50),
recording_fee FLOAT(50),
processing_fee FLOAT(50),
`is_finances` BOOLEAN);
