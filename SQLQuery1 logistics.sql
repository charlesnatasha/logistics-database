--CREATE DATABASE logistics_db;

USE logistics_db;
--CREATE TABLE customers(
--customer_ID INT PRIMARY KEY,
--FirstName VARCHAR (20),
--LastName VARCHAR (20),
--phone VARCHAR (50),
--email VARCHAR (100),
--address TEXT
--);

--CREATE TABLE pickup_location(
--location_ID INT PRIMARY KEY,
--address TEXT NOT NULL,
--city VARCHAR (50),
--state VARCHAR (50),
--zip_code VARCHAR (20)
--);

--CREATE TABLE delivery_locations(
--location_ID INT PRIMARY KEY,
--address TEXT NOT NULL, 
--city VARCHAR (50),
--state VARCHAR (50),
--zip_code VARCHAR (20)
--);

--CREATE TABLE packages(
--package_ID INT PRIMARY KEY,
--customer_ID INT,
--weight DECIMAL (10,2),
--dimensions VARCHAR (50),
--package_type VARCHAR (50),
--declared_value DECIMAL (10,2),
--pickup_location_ID INT,
--delivery_location_ID INT,
--FOREIGN KEY (customer_ID)
--REFERENCES customers(customer_ID),
--FOREIGN KEY (pickup_location_ID)
--REFERENCES 
--pickup_location (location_ID),
--FOREIGN KEY
--(delivery_location_ID) REFERENCES 
--delivery_locations(location_ID)
--);

--CREATE TABLE couriers(
--courier_ID INT PRIMARY KEY IDENTITY (1,1), 
--FirstName VARCHAR (50) NOT NULL,
--LastName VARCHAR (50) NOT NULL,
--phone VARCHAR (20),
--vehicle_type VARCHAR (50),
--availability_status VARCHAR (20)
--DEFAULT 'available',
--CONSTRAINT
--CHK_couriers_availability_status
--CHECK (availability_status IN 
--('available', 'Busy', 'Offline'))
--);

--CREATE TABLE deliveries(
--delivery_ID INT PRIMARY KEY,
--package_ID INT UNIQUE,
--courier_ID INT,
--pickup_time DATETIME,
--estimated_delivery_time DATETIME,
--FOREIGN KEY (package_ID)
--REFERENCES packages (package_ID),
--FOREIGN KEY (courier_ID)
--REFERENCES couriers (courier_ID)
--);

--CREATE TABLE delivery_status(
--status_ID INT PRIMARY KEY,
--delivery_ID INT,
--status VARCHAR (50) NOT NULL, 
--status_time DATETIME DEFAULT CURRENT_TIMESTAMP,
--notes TEXT,
--FOREIGN KEY (delivery_ID)
--REFERENCES deliveries (delivery_ID)
--);

--CREATE TABLE payments(
--payment_ID INT PRIMARY KEY 
--IDENTITY (1,1),
--delivery_ID INT, 
--amount DECIMAL(10,2) NOT NULL,
--payment_method VARCHAR (50),
--payment_status VARCHAR (20) DEFAULT 
--'pending',
--payment_date DATETIME DEFAULT
--GETDATE(),
--FOREIGN KEY (delivery_ID)
--REFERENCES deliveries (delivery_ID),
--CONSTRAINT CHK_payment_status
--CHECK (payment_status IN 
--('pending', 'completed', 'failed'))
--);


--INSERT INTO Customers (customer_ID, FirstName, LastName, phone, email, address) VALUES
--(1,'Alice', 'Johnson', '555-0101', 'alice.j@email.com', '123 Main St, New York, NY'),
--(2,'Bob', 'Smith', '555-0102', 'bob.smith@email.com', '456 Oak Ave, Chicago, IL'),
--(3,'Charlie', 'Brown', '555-0103', 'charlie.b@email.com', '789 Pine Rd, Boston, MA'),
--(4,'Diana', 'Prince', '555-0104', 'diana.p@email.com', '321 Maple Blvd, Miami, FL'),
--(5,'Ethan', 'Hunt', '555-0105', 'ethan.h@email.com', '654 Elm St, Los Angeles, CA'),
--(6,'Fiona', 'Gallagher', '555-0106', 'fiona.g@email.com', '987 Cedar Ln, Seattle, WA'),
--(7,'George', 'Miller', '555-0107', 'george.m@email.com', '147 Birch Dr, Dallas, TX'),
--(8,'Hannah', 'Davis', '555-0108', 'hannah.d@email.com', '258 Willow Way, Denver, CO'),
--(9,'Ian', 'Chen', '555-0109', 'ian.c@email.com', '369 Spruce Ct, Atlanta, GA'),
--(10,'Julia', 'Roberts', '555-0110', 'julia.r@email.com', '741 Palm St, Phoenix, AZ'),
--(11,'Kevin', 'Lee', '555-0111', 'kevin.l@email.com', '852 Redwood Ave, San Francisco, CA'),
--(12,'Lisa', 'Wong', '555-0112', 'lisa.w@email.com', '963 Sequoia Rd, Portland, OR'),
--(13,'Mike', ' Wilson', '555-0113', 'mike.w@email.com', '159 Aspen Way, Las Vegas, NV'),
--(14,'Nancy', ' Taylor', '555-0114', 'nancy.t@email.com', '357 Oakwood Dr, Houston, TX'),
--(15,'Oscar', ' Martinez', '555-0115', 'oscar.m@email.com', '753 Fir St, Orlando, FL'),
--(16,'Paula', ' Rodriguez', '555-0116', 'paula.r@email.com', '951 Pinecone Ln, San Diego, CA'),
--(17,'Quincy', ' Adams', '555-0117', 'quincy.a@email.com', '864 Magnolia Ave, Austin, TX'),
--(18,'Rachel', ' Green', '555-0118', 'rachel.g@email.com', '279 Dogwood Dr, Nashville, TN'),
--(19,'Steve', ' Rogers', '555-0119', 'steve.r@email.com', '483 Sycamore St, Washington, DC'),
--(20,'Tina', ' Turner', '555-0120', 'tina.t@email.com', '672 Poplar Rd, Philadelphia, PA');

--INSERT INTO pickup_location (location_ID, address, city, state, zip_code) VALUES
--(1,'123 Main St', 'New York', 'NY', '10001'),
--(2,'456 Oak Ave', 'Chicago', 'IL', '60601'),
--(3,'789 Pine Rd', 'Boston', 'MA', '02101'),
--(4,'321 Maple Blvd', 'Miami', 'FL', '33101'),
--(5,'654 Elm St', 'Los Angeles', 'CA', '90001'),
--(6,'987 Cedar Ln', 'Seattle', 'WA', '98101'),
--(7,'147 Birch Dr', 'Dallas', 'TX', '75201'),
--(8,'258 Willow Way', 'Denver', 'CO', '80201'),
--(9,'369 Spruce Ct', 'Atlanta', 'GA', '30301'),
--(10,'741 Palm St', 'Phoenix', 'AZ', '85001'),
--(11,'852 Redwood Ave', 'San Francisco', 'CA', '94101'),
--(12,'963 Sequoia Rd', 'Portland', 'OR', '97201'),
--(13,'159 Aspen Way', 'Las Vegas', 'NV', '89101'),
--(14,'357 Oakwood Dr', 'Houston', 'TX', '77001'),
--(15,'753 Fir St', 'Orlando', 'FL', '32801'),
--(16,'951 Pinecone Ln', 'San Diego', 'CA', '92101'),
--(17,'864 Magnolia Ave', 'Austin', 'TX', '73301'),
--(18,'279 Dogwood Dr', 'Nashville', 'TN', '37201'),
--(19,'483 Sycamore St', 'Washington', 'DC', '20001'),
--(20,'672 Poplar Rd', 'Philadelphia', 'PA', '19101');


--INSERT INTO delivery_locations (location_ID,address, city, state, zip_code) VALUES
--(1,'100 Broadway', 'New York', 'NY', '10002'),
--(2,'200 Michigan Ave', 'Chicago', 'IL', '60602'),
--(3,'300 Beacon St', 'Boston', 'MA', '02102'),
--(4,'400 Ocean Dr', 'Miami', 'FL', '33102'),
--(5,'500 Sunset Blvd', 'Los Angeles', 'CA', '90002'),
--(6,'600 Pike St', 'Seattle', 'WA', '98102'),
--(7,'700 Commerce St', 'Dallas', 'TX', '75202'),
--(8,'800 Colfax Ave', 'Denver', 'CO', '80202'),
--(9,'900 Peachtree St', 'Atlanta', 'GA', '30302'),
--(10,'1000 Central Ave', 'Phoenix', 'AZ', '85002'),
--(11,'1100 Market St', 'San Francisco', 'CA', '94102'),
--(12,'1200 Burnside', 'Portland', 'OR', '97202'),
--(13,'1300 Las Vegas Blvd', 'Las Vegas', 'NV', '89102'),
--(14,'1400 Main St', 'Houston', 'TX', '77002'),
--(15,'1500 International Dr', 'Orlando', 'FL', '32802'),
--(16,'1600 Harbor Dr', 'San Diego', 'CA', '92102'),
--(17,'1700 Congress Ave', 'Austin', 'TX', '73302'),
--(18,'1800 Broadway', 'Nashville', 'TN', '37202'),
--(19,'1900 Pennsylvania Ave', 'Washington', 'DC', '20002'),
--(20,'2000 Market St', 'Philadelphia', 'PA', '19102');


--INSERT INTO packages (customer_ID, package_ID, weight, dimensions, package_type, declared_value, pickup_location_ID, delivery_location_ID) VALUES
--(1, 10, 2.5, '12x8x4', 'Documents', 50.00, 1, 1),
--(2, 20, 15.0, '24x18x12', 'Electronics', 500.00, 2, 2),
--(3, 30, 5.0, '10x10x10', 'Clothing', 120.00, 3, 3),
--(4, 40, 8.0, '16x12x8', 'Books', 80.00, 4, 4),
--(5, 50, 25.0, '36x24x18', 'Furniture', 800.00, 5, 5),
--(6, 60, 1.5, '8x6x2', 'Jewelry', 300.00, 6, 6),
--(7, 70, 12.0, '20x16x10', 'Tools', 250.00, 7, 7),
--(8, 80, 3.0, '14x10x6', 'Medication', 150.00, 8, 8),
--(9, 90, 18.0, '30x20x15', 'Auto Parts', 400.00, 9, 9),
--(10, 95, 6.0, '18x12x6', 'Cosmetics', 90.00, 10, 10),
--(11, 100, 22.0, '32x24x16', 'Sports Equipment', 600.00, 11, 11),
--(12, 200, 4.0, '12x9x6', 'Art Supplies', 180.00, 12, 12),
--(13, 300, 10.0, '22x14x10', 'Musical Instruments', 750.00, 13, 13),
--(14, 400, 7.0, '16x10x8', 'Computer Parts', 320.00, 14, 14),
--(15, 500, 30.0, '40x30x20', 'Industrial Equipment', 1200.00, 15, 15),
--(16, 600, 2.0, '10x8x4', 'Photography Gear', 450.00, 16, 16),
--(17, 700, 9.0, '20x12x10', 'Kitchenware', 110.00, 17, 17),
--(18, 800, 14.0, '26x18x12', 'Gardening Tools', 280.00, 18, 18),
--(19, 900, 11.0, '24x16x8', 'Camping Gear', 350.00, 19, 19),
--(20, 999, 20.0, '28x20x14', 'Office Supplies', 220.00, 20, 20);


--INSERT INTO couriers (FirstName, LastName, phone, vehicle_type, availability_status) VALUES
--('John', 'Doe', '555-0201', 'Bike', 'Available'),
--('Jane', 'Smith', '555-0202', 'Car', 'Busy'),
--('Mike', 'Johnson', '555-0203', 'Van', 'Available'),
--('Sarah', 'Williams', '555-0204', 'Truck', 'Offline'),
--('David', 'Brown', '555-0205', 'Bike', 'Available'),
--('Emily', 'Davis', '555-0206', 'Motorcycle', 'Busy'),
--('Chris', 'Miller', '555-0207', 'Van', 'Available'),
--('Amy', 'Wilson', '555-0208', 'Car', 'Available'),
--('Robert', 'Moore', '555-0209', 'Truck', 'Busy'),
--('Lisa', 'Taylor', '555-0210', 'Bike', 'Available'),
--('James', 'Anderson', '555-0211', 'Van', 'Offline'),
--('Maria', 'Thomas', '555-0212', 'Car', 'Available'),
--('Daniel', 'Jackson', '555-0213', 'Motorcycle', 'Busy'),
--('Karen', 'White', '555-0214', 'Bike', 'Available'),
--('Paul', 'Harris', '555-0215', 'Truck', 'Available'),
--('Laura', 'Martin', '555-0216', 'Van', 'Busy'),
--('Mark', 'Thompson', '555-0217', 'Car', 'Available'),
--('Jessica', 'Garcia', '555-0218', 'Bike', 'Offline'),
--('Steven', 'Martinez', '555-0219', 'Motorcycle', 'Available'),
--('Nancy', 'Robinson', '555-0220', 'Van', 'Available');



--ALTER TABLE deliveries
--ADD actual_delivery_time DATETIME;

--INSERT INTO deliveries (delivery_ID,package_ID, courier_ID, pickup_time, estimated_delivery_time, actual_delivery_time) VALUES
--(1, 10, 1, '2024-01-15 09:00:00', '2024-01-15 12:00:00', '2024-01-15 11:30:00'),
--(2, 20, 2, '2024-01-15 10:30:00', '2024-01-15 15:00:00', '2024-01-15 14:45:00'),
--(3,30, 3, '2024-01-16 08:45:00', '2024-01-16 11:30:00', '2024-01-16 12:15:00'),
--(4,40, 4, '2024-01-16 11:00:00', '2024-01-16 14:00:00', '2024-01-16 13:30:00'),
--(5, 50, 5, '2024-01-17 13:00:00', '2024-01-17 17:00:00', '2024-01-17 16:20:00'),
--(6, 60, 6, '2024-01-17 14:30:00', '2024-01-17 16:30:00', '2024-01-17 16:00:00'),
--(7, 70, 7, '2024-01-18 10:00:00', '2024-01-18 13:00:00', '2024-01-18 13:45:00'),
--(8, 80, 8, '2024-01-18 12:00:00', '2024-01-18 15:00:00', '2024-01-18 14:30:00'),
--(9, 90, 9, '2024-01-19 09:30:00', '2024-01-19 12:30:00', '2024-01-19 12:00:00'),
--(10,95, 10, '2024-01-19 11:15:00', '2024-01-19 14:15:00', '2024-01-19 15:30:00'),
--(11, 100, 11, '2024-01-20 08:00:00', '2024-01-20 11:00:00', '2024-01-20 10:45:00'),
--(12, 200, 12, '2024-01-20 10:45:00', '2024-01-20 13:45:00', '2024-01-20 13:15:00'),
--(13, 300, 13, '2024-01-21 13:30:00', '2024-01-21 16:30:00', '2024-01-21 17:15:00'),
--(14, 400, 14, '2024-01-21 15:00:00', '2024-01-21 18:00:00', '2024-01-21 17:30:00'),
--(15, 500, 15, '2024-01-22 09:45:00', '2024-01-22 13:45:00', '2024-01-22 13:00:00'),
--(16, 600, 16, '2024-01-22 11:30:00', '2024-01-22 14:30:00', '2024-01-22 15:45:00'),
--(17, 700, 17, '2024-01-23 08:30:00', '2024-01-23 11:30:00', '2024-01-23 11:00:00'),
--(18, 800, 18, '2024-01-23 12:15:00', '2024-01-23 15:15:00', NULL), -- Not yet delivered
--(19, 900, 19, '2024-01-24 10:30:00', '2024-01-24 13:30:00', NULL), -- Not yet delivered
--(20,999, 20, '2024-01-24 14:00:00', '2024-01-24 17:00:00', '2024-01-24 16:20:00');



--INSERT INTO delivery_status (status_ID ,delivery_ID, status, status_time, notes) VALUES
--(1, 1, 'Pending', '2024-01-15 08:30:00', 'Awaiting courier assignment'),
--(2, 1, 'Assigned', '2024-01-15 08:45:00', 'Courier John Doe assigned'),
--(3, 1, 'Picked Up', '2024-01-15 09:00:00', 'Package collected from customer'),
--(4, 1, 'In Transit', '2024-01-15 09:15:00', 'On route to delivery location'),
--(5, 1, 'Delivered', '2024-01-15 11:30:00', 'Successfully delivered to recipient');


--INSERT INTO delivery_status (status_ID, delivery_ID, status, status_time, notes) VALUES
--(6, 2, 'Pending', '2024-01-15 09:00:00', 'Scheduled for pickup'),
--(7, 2, 'Picked Up', '2024-01-15 10:30:00', 'Package collected'),
--(8, 2, 'In Transit', '2024-01-15 10:45:00', 'En route to Chicago downtown'),
--(9, 2, 'Delivered', '2024-01-15 14:45:00', 'Left at front desk');


--INSERT INTO delivery_status (status_ID, delivery_ID, status, status_time, notes) VALUES
--(10, 3, 'Picked Up', '2024-01-16 08:45:00', NULL),
--(11, 3, 'In Transit', '2024-01-16 09:00:00', 'Heavy traffic on highway'),
--(13, 3, 'Delayed', '2024-01-16 11:00:00', 'Traffic congestion'),
--(14, 3, 'Delivered', '2024-01-16 12:15:00', 'Delivered 45 minutes late');

-- (ongoing delivery)
--INSERT INTO delivery_status (status_ID, delivery_ID, status, status_time, notes) VALUES
--(15, 18, 'Picked Up', '2024-01-23 12:15:00', 'Package collected'),
--(16, 18, 'In Transit', '2024-01-23 12:30:00', 'On route to Nashville');

--(ongoing delivery)
--INSERT INTO delivery_status (status_ID, delivery_ID, status, status_time, notes) VALUES
--(17, 19, 'Picked Up', '2024-01-24 10:30:00', 'Package collected'),
--(18, 19, 'In Transit', '2024-01-24 10:45:00', 'Headed to Washington DC');

--INSERT INTO delivery_status (status_ID, delivery_ID, status, status_time) VALUES
--(19, 4, 'Picked Up', '2024-01-16 11:00:00'),
--(20, 4, 'Delivered', '2024-01-16 13:30:00'),
--(21, 5, 'Picked Up', '2024-01-17 13:00:00'),
--(22, 5, 'Delivered', '2024-01-17 16:20:00'),
--(23, 6, 'Picked Up', '2024-01-17 14:30:00'),
--(24, 6, 'Delivered', '2024-01-17 16:00:00'),
--(25, 7, 'Picked Up', '2024-01-18 10:00:00'),
--(26, 7, 'Delivered', '2024-01-18 13:45:00'),
--(27, 8, 'Picked Up', '2024-01-18 12:00:00'),
--(28, 8, 'Delivered', '2024-01-18 14:30:00'),
--(29, 9, 'Picked Up', '2024-01-19 09:30:00'),
--(30, 9, 'Delivered', '2024-01-19 12:00:00'),
--(31, 10, 'Picked Up', '2024-01-19 11:15:00'),
--(32, 10, 'Delivered', '2024-01-19 15:30:00');



--INSERT INTO payments (delivery_ID, amount, payment_method, payment_status, payment_date) VALUES
--(1, 12.50, 'Credit Card', 'completed', '2024-01-15 12:00:00'),
--(2, 45.00, 'PayPal', 'completed', '2024-01-15 15:00:00'),
--(3, 18.75, 'Credit Card', 'completed', '2024-01-16 13:00:00'),
--(4, 22.00, 'Bank Transfer', 'completed', '2024-01-16 14:30:00'),
--(5, 85.50, 'Credit Card', 'completed', '2024-01-17 17:30:00'),
--(6, 35.25, 'PayPal', 'pending', '2024-01-17 17:00:00'),
--(7, 42.00, 'Credit Card', 'completed', '2024-01-18 14:00:00'),
--(8, 28.50, 'Cash on Delivery', 'completed', '2024-01-18 15:30:00'),
--(9, 60.00, 'Bank Transfer', 'completed', '2024-01-19 13:00:00'),
--(10, 25.75, 'Credit Card', 'failed', '2024-01-19 16:00:00'),
--(11, 72.00, 'PayPal', 'completed', '2024-01-20 11:30:00'),
--(12, 30.50, 'Credit Card', 'completed', '2024-01-20 14:00:00'),
--(13, 95.00, 'Bank Transfer', 'pending', '2024-01-21 17:30:00'),
--(14, 48.25, 'Credit Card', 'completed', '2024-01-21 18:30:00'),
--(15, 120.00, 'PayPal', 'completed', '2024-01-22 14:00:00'),
--(16, 55.50, 'Credit Card', 'completed', '2024-01-22 16:00:00'),
--(17, 38.00, 'Cash on Delivery', 'pending', '2024-01-23 12:00:00'),
--(18, 65.75, 'Credit Card', 'pending', '2024-01-23 15:30:00'),
--(19, 52.00, 'PayPal', 'pending', '2024-01-24 14:00:00'),
--(20, 44.50, 'Bank Transfer', 'completed', '2024-01-24 17:30:00');


--SELECT * FROM deliveries;
--SELECT * FROM customers;
--SELECT * FROM packages;

--total number of packages per customers

--SELECT
--    c.FirstName + ' ' + c.LastName AS Customer_Name,
--    COUNT(p.package_ID)AS
--Total_packages
--FROM customers c
--LEFT JOIN packages p ON c.customer_ID
--=p.customer_ID
--GROUP BY c.customer_ID, c.FirstName, c.LastName
--ORDER BY Total_packages DESC;

-- average package weight by package type

--SELECT 
--    package_type,
--    COUNT(*) AS package_count,
--    AVG(weight) AS AVG_weight,
--    MIN(weight) AS MIN_weight,
--    MAX(weight) AS MAX_weight
--    FROM packages
--    GROUP BY package_type
--    ORDER BY AVG_weight DESC;

-- courier performance

--SELECT 
--    c.FirstName + ' ' + c.LastName AS courier_name,
--    COUNT(d.delivery_ID) AS total_deliveries,
--    AVG(DATEDIFF(MINUTE,
--    d.pickup_time,
--    d.actual_delivery_time)) AS 
--    Avg_delivery_time_minutes
--    FROM couriers c
--    LEFT JOIN deliveries d ON 
--    c.courier_ID = d.courier_ID
--    WHERE d.actual_delivery_time IS NOT NULL
--    GROUP BY c.courier_ID, c.FirstName, c.LastName
--    ORDER BY total_deliveries DESC;

--daily delivery volume

--SELECT 
--CAST(pickup_time AS date) AS delivery_date,
--COUNT(*) AS deliveries_count,
--SUM(CASE WHEN 
--actual_delivery_time IS NOT NULL THEN 1 ELSE 0 END) AS 
--completed_deliveries, 
--SUM(CASE WHEN 
--actual_delivery_time IS NULL THEN 1 ELSE 0 END) AS pending_deliveries
--FROM deliveries
--GROUP BY CAST(pickup_time AS date)
--ORDER BY delivery_date DESC;

-- late deliveries

--SELECT 
--d.delivery_ID,
--c.FirstName + ' ' + c.LastName AS customer_name,
--cr.FirstName + ' '+ cr.LastName AS courier_name,
--d.estimated_delivery_time,
--d.actual_delivery_time,
--DATEDIFF(MINUTE,
--d.estimated_delivery_time,
--d.actual_delivery_time) AS 
--minutes_late
--FROM deliveries d
--JOIN packages p ON d.package_ID =
--p.package_ID 
--JOIN customers c ON p.customer_ID =
--c.customer_ID
--JOIN couriers cr ON d.courier_ID =
--cr.courier_ID
--WHERE d.actual_delivery_time >
--d.estimated_delivery_time
--ORDER BY minutes_late DESC;

-- total revenue by payment status

--SELECT
--payment_status,
--COUNT(*) AS payment_count,
--SUM(amount) AS total_amount,
--AVG(amount) AS average_amount
--FROM payments
--GROUP BY payment_status
--ORDER BY total_amount DESC;

-- monthly revenue report

--SELECT 
--YEAR(payment_date) AS year,
--MONTH(payment_date) AS month,
--COUNT(*) AS transactions,
--SUM(amount) AS total_revenue,
--AVG(amount) AS
--average_tranaction
--FROM payments
--WHERE payment_status = 'completed'
--GROUP BY YEAR(payment_date),
--MONTH(payment_date)
--ORDER BY year DESC, month DESC;

-- revenue by payment method

--SELECT 
--payment_method,
--COUNT(*) AS transaction_count,
--SUM(amount) AS total_revenue,
--(SUM(amount) * 100.0 / (SELECT
--SUM(amount) FROM payments WHERE 
--payment_status = 'completed')) AS 
--percentage
--FROM payments
--WHERE payment_status = 'completed'
--GROUP BY payment_method
--ORDER BY total_revenue DESC;

-- top 5 highest value packages delivered

--SELECT TOP 5
--      p.package_ID,
--      c.FirstName + ' ' + c.LastName AS customer_name,
--      p.package_type,
--      p.declared_value,
--      py.amount AS shipping_cost,
--      (p.declared_value + py.amount) AS
--      total_value
--      FROM packages p
--      JOIN deliveries d ON  p.package_ID =
--      d.package_ID
--      JOIN payments py ON d.delivery_ID = 
--      py.delivery_ID
--      JOIN customers c ON p.customer_ID = 
--      c.customer_ID
--      WHERE py.payment_status = 'completed'
--      ORDER BY p.declared_value DESC;

-- pending payment report

--SELECT
--    p.payment_ID,
--    c.FirstName + ' ' + c.LastName AS customer_name,
--    p.amount,
--    p.payment_method,
--    p.payment_date,
--    DATEDIFF(DAY, p.payment_date,
--    GETDATE()) AS days_pending 
--    FROM payments p
--    JOIN deliveries d ON p.delivery_ID = 
--    d.delivery_ID
--    JOIN packages pk ON d.package_ID = 
--    pk.package_ID
--    JOIN customers c ON pk.customer_ID = 
--    c.customer_ID
--    WHERE p.payment_status = 'pending'
--    ORDER BY days_pending DESC;

-- most popular delivery routes

--SELECT 
--   pl.city AS from_city,
--   dl.city AS to_city,
--   COUNT(*) AS delivery_count,
--   AVG(DATEDIFF(MINUTE,
--   d.pickup_time,
--   d.actual_delivery_time)) AS 
--   AVG_delivery_time_minutes
--   FROM packages p
--   JOIN pickup_location pl ON 
--   p.pickup_location_ID = pl.location_ID
--   JOIN delivery_locations dl ON 
--   p.delivery_location_ID = 
--   dl.location_ID
--   JOIN deliveries d ON p.package_ID = 
--   d.package_ID
--   WHERE d.actual_delivery_time IS NOT NULL
--   GROUP BY pl.city, dl.city
--   ORDER BY delivery_count DESC;

-- courier untilization

--SELECT 
--    availability_status,
--    COUNT(*) AS courier_count,
--    (COUNT(*) * 100.0 / (SELECT
--COUNT(*) FROM couriers)) AS
--percentage 
--FROM couriers
--GROUP BY availability_status
--ORDER BY courier_count DESC;

-- package delivery ime analysis

--SELECT
--    package_type,
--    COUNT(*) AS deliveries,
--    AVG(DATEDIFF(MINUTE,
--d.pickup_time,
--d.actual_delivery_time)) AS
--Avg_time_miniutes,
--      MAX(DATEDIFF(MINUTE,
--d.pickup_time,
--d.actual_delivery_time)) AS
--Max_time_minutes
--FROM packages p
--JOIN deliveries d ON p.package_ID = 
--d.package_ID
--WHERE d.actual_delivery_time IS NOT NULL
--GROUP BY package_type
--ORDER BY Avg_time_miniutes;

-- peak delivery hours

--SELECT
--    DATEPART(HOUR, pickup_time) AS 
--    hour_of_day,
--    COUNT(*) AS delivery_count,
--    AVG(DATEDIFF(MINUTE, pickup_time,
--actual_delivery_time)) AS 
--Avg_deliveries_time
--FROM deliveries
--WHERE actual_delivery_time IS NOT NULL
--GROUP BY DATEPART(HOUR, pickup_time)
--ORDER BY delivery_count DESC;
    
-- failed delivery attempts 

--    SELECT 
--        d.delivery_ID,
--        c.FirstName + ' '+ c.LastName AS customer_name,
--        ds.status,
--        ds.status_time,
--        ds.notes
--FROM delivery_status ds
--JOIN deliveries d ON ds.delivery_ID = 
--d.delivery_ID
--JOIN  packages p ON d.package_ID =
--p.package_ID
--JOIN customers c ON p.customer_ID =
--c.customer_ID
--WHERE ds.status IN  ('pending', 'returned', 'cancelled')
--ORDER BY ds.status_time DESC;

-- top 10 custoers by spending

--SELECT TOP 10
--       c.customer_ID,
--       c.FirstName + ' ' + c.LastName AS customer_name,
--       COUNT(DISTINCT p.package_ID) AS packages_sent,
--      SUM(py.amount) AS total_spent,
--      AVG(py.amount) AS
--average_spent_per_package
--FROM customers c 
--JOIN packages p ON c.customer_ID =
--p.customer_ID
--JOIN deliveries d ON p.package_ID = 
--d.package_ID
--JOIN payments py ON d.delivery_ID =
--py.delivery_ID
--WHERE py.payment_status = 'completed'
--GROUP BY c.customer_ID, c.FirstName,
--c.LastName
--ORDER BY total_spent DESC;

-- customer frequency analysis

--SELECT 
--    package_count_range,
--    COUNT(*) AS Customer_count,
--    SUM(total_spent) AS
--combined_revenue
--FROM (
--    SELECT 
--    c.customer_ID,
--    c.FirstName + ' ' + c.LastName AS customer_name,
--    COUNT(p.package_ID) AS package_count,
--    SUM(py.amount) AS total_spent,
--    CASE
--    WHEN COUNT(p.package_ID) 
--    = 10 THEN 'one-time' 
--    WHEN COUNT(p.package_ID)
--    BETWEEN 20 AND 50 THEN 'occasional(20-50)'
--    WHEN COUNT (p.package_ID)
--    BETWEEN 60 AND 95  THEN 'regular (60-95)'
--    ELSE 'frequent (95+)'
--    END AS package_count_range 
--    FROM customers c
--    LEFT JOIN packages p ON 
--    c.customer_ID = p.customer_ID
--    LEFT JOIN deliveries d ON 
--    p.package_ID = d.package_ID
--    LEFT JOIN payments py ON 
--    d.delivery_ID = py.delivery_ID AND 
--    py.payment_status = 'completed'
--    GROUP BY c.customer_ID, c.FirstName, c.LastName
--    ) AS customerStats 
--    GROUP BY package_count_range
--    ORDER BY Customer_count DESC;

-- new customers by month

--SELECT 
--    YEAR(first_package_date) AS year,
--    MONTH(first_package_date) AS month,
--    COUNT(*) AS new_customers
--    FROM (
--       SELECT 
--       c.customer_ID,
--       c.FirstName + ' ' + c.LastName AS customer_name,
--       MIN(d.pickup_time) AS
--       first_package_date
--       FROM customers c 
--       JOIN packages p ON c.customer_ID 
--       = p.customer_ID
--       JOIN deliveries d ON p.package_ID
--       = d.package_ID
--       GROUP BY c.customer_ID, c.FirstName, c.LastName
--       ) AS firstorders
--       GROUP BY YEAR(first_package_date),
--       MONTH(first_package_date)
--       ORDER BY year DESC, month DESC;


-- delivery sucess rate by courier

--SELECT 
--cr.courier_ID,
--cr.FirstName + ' ' + cr.LastName 
--AS courier_name,
--COUNT(d.delivery_ID) AS
--total_assignments,
--SUM(CASE WHEN 
--d.actual_delivery_time IS NOT NULL
--THEN 1 ELSE 0 END) AS 
--completed_deliveries,
--SUM(CASE WHEN 
--d.actual_delivery_time IS NULL THEN 1 
--ELSE 0 END) AS pending_deliveries,
--CAST(SUM(CASE WHEN
--d.actual_delivery_time IS NOT NULL
--THEN 1 ELSE 0 END) * 100.0 / 
--NULLIF(COUNT(d.delivery_ID), 0) AS 
--decimal(5,2)) AS sucess_rate 
--FROM couriers cr
--LEFT JOIN deliveries d ON 
--cr.courier_ID = d.courier_ID
--GROUP BY cr.courier_ID, cr.FirstName,
--cr.LastName
--ORDER BY sucess_rate DESC;

-- package value vs shiping cost ratio

--SELECT 
--    p.package_type,
--    COUNT(*) AS package_count,
--    AVG(p.declared_value) AS
--    avg_declared_value,
--    AVG(py.amount) AS 
--    avg_shipping_cost,
--CASE
--WHEN SUM(py.amount) = 0  THEN 
--NULL
--    ELSE AVG(p.declared_value /
--    NULLIF(py.amount, 0)) 
--   END AS value_to_cost_ratio
--    FROM packages p
--   LEFT JOIN deliveries d ON
--   p.package_ID = d.package_ID
--    LEFT JOIN payments py ON 
--    d.delivery_ID = py.delivery_ID
--    WHERE py.payment_status = 'completed'
--    AND py.amount > 0
--    AND d.package_ID IS NOT NULL
--    GROUP BY p.package_type
--    ORDER BY value_to_cost_ratio DESC;


-- customers with 'son' in their names

--SELECT
--    customer_ID,
--    FirstName,
--    LastName,
--    phone,
--    email
--FROM customers
--WHERE LastName LIKE '%son%'
--ORDER BY LastName, FirstName;

-- packages related to electronics 

--SELECT 
--   p.package_ID,
--   p.package_type,
--   p.declared_value,
--   c.FirstName + ' ' + c.LastName AS
--   customer_name
--   FROM packages p
--   JOIN  customers c ON p.customer_ID =
--   c.customer_ID
--   WHERE p.package_type LIKE
--   '%electronic%' 
--   OR p.package_type LIKE 
--   '%computer%'
--   ORDER BY p.declared_value DESC;

-- VEHICLE TYPE

--SELECT 
--    courier_ID,
--    FirstName + ' ' + LastName AS 
--    courier_name,
--    vehicle_type,
--    availability_status
--    FROM couriers
--    WHERE vehicle_type LIKE '%van%'
--    OR vehicle_type LIKE '%truck%'
--    ORDER BY availability_status, courier_name;


    
















