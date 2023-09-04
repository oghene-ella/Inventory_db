-- Create database
-- CREATE DATABASE clothingDB;
-- USE clothingDB;


-- Create all tables
-- CREATE TABLE clothingDB.clothing_item (clothing_item_id varchar(7), clothing_item_name varchar(255), clothing_item_description varchar (255), clothing_item_price integer, clothing_item_category varchar(255), clothing_item_size varchar(255), PRIMARY KEY (clothing_item_id));

-- CREATE Table clothingDB.admin (admin_id varchar(7), admin_role varchar(255), admin_status boolean, user_id varchar(7), PRIMARY KEY (admin_id), FOREIGN KEY (user_id) REFERENCES user(user_id));

-- CREATE TABLE clothingDB.customer_order (customer_order_id varchar(7), customer_location varchar(255), customer_amount_spent integer, order_created timestamp, payment_method_id varchar(7), clothing_item_id varchar(7), delivery_id varchar(7), PRIMARY KEY (customer_order_id), FOREIGN KEY (payment_method_id) REFERENCES payment_method(payment_method_id), FOREIGN KEY (clothing_item_id) references clothing_item(clothing_item_id), FOREIGN KEY (delivery_id) references delivery_method(delivery_id));

-- CREATE TABLE clothingDB.cashier (cashier_id varchar(7), cashier_status boolean, cashier_level varchar(255), clothing_item_id varchar(7), cashier_payroll_id varchar(7), customer_order_id varchar(7), user_id varchar(7), PRIMARY KEY (cashier_id), FOREIGN KEY (clothing_item_id) REFERENCES clothing_item(clothing_item_id), FOREIGN KEY (cashier_payroll_id) references cashier_payroll(cashier_payroll_id), FOREIGN KEY (customer_order_id) references customer_order(customer_order_id), FOREIGN KEY (user_id) references user(user_id));

-- CREATE Table clothingDB.cashier_payroll (cashier_payroll_id varchar(7), payroll_type boolean, amount_gained integer, payment_method_id varchar(7), PRIMARY KEY (cashier_payroll_id), FOREIGN KEY (payment_method_id) REFERENCES payment_method(payment_method_id));

-- CREATE Table clothingDB.payment_method (payment_method_id varchar(7), payment_method_type boolean, payment_charges integer, payment_time timestamp, PRIMARY KEY (payment_method_id));

-- CREATE Table clothingDB.delivery_method (delivery_id varchar(7), is_doorstep boolean, delivery_fee integer, delivery_time timestamp, PRIMARY KEY (delivery_id));

-- CREATE Table clothingDB.user (user_id varchar(7), user_name varchar(255), user_role varchar(255), user_email varchar(255), PRIMARY KEY (user_id));

-- CREATE TABLE clothingDB.customer (customer_id varchar(7), customer_order_id varchar(7), user_id varchar(7), PRIMARY KEY (customer_id), FOREIGN KEY (customer_order_id) REFERENCES customer_order(customer_order_id), FOREIGN KEY (user_id) references user(user_id));


-- Show all tables
-- SHOW TABLES


-- Rename a column in payment_method table
-- ALTER TABLE payment_method
  -- CHANGE COLUMN payment_method_type is_transfer
   -- boolean NOT NULL;
   
-- Rename a column in cashier_payroll table
-- ALTER TABLE cashier_payroll
   -- CHANGE COLUMN payroll_type is_monthly
    -- boolean NOT NULL;
-- SELECT * FROM cashier_payroll

-- Inserting Records for all entites (tables)

-- Inserting record for clothing_item table
-- INSERT INTO clothingDB.clothing_item VALUES ("item_41", "Nike bagpack (21L)", "From workouts to getting to work, the Nike Backpack has you covered.", 2290, "Bags", "L");
-- INSERT INTO clothingDB.clothing_item VALUES ("item_36", "Nike Air Force 1 '07", "The radiance lives on in the Nike Air Force 1 '07, puts a fresh spin on what you know best.", 7450, "Shoes", "M");
-- INSERT INTO clothingDB.clothing_item VALUES ("item_09", "Nike Dri-Fit Dress", "Hit the green in a dress made to work with your every swing.", 5480, "Dress", "S");
-- show items in clothing_item table
-- SELECT * FROM clothing_item ;


-- Inserting record for customer_order table


-- Inserting record for cashier_payroll table
-- INSERT INTO clothingDB.cashier_payroll VALUES ("cas_002", 1, 54000, 
-- 	(SELECT payment_method_id FROM payment_method WHERE payment_method_id = "pay_AJ4")
--     );
    
-- INSERT INTO clothingDB.cashier_payroll VALUES ("cas_003", 0, 60000,
-- 	(SELECT payment_method_id FROM payment_method WHERE payment_method_id = "pay_AA3")
-- 	);

-- INSERT INTO clothingDB.cashier_payroll VALUES ("cas_001", 1, 56000,
-- 	(SELECT payment_method_id FROM payment_method WHERE payment_method_id = "pay_AR2")
--     );
-- show items in cashier_payroll table;
-- SELECT * FROM cashier_payroll;


-- Inserting record for payment_method table
-- INSERT INTO clothingDB.payment_method VALUES ("pay_AR2", 1, 50, '2010-11-9 8:30:30');
-- INSERT INTO clothingDB.payment_method VALUES ("pay_AA3", 0, 0, '2021-05-5 21:49:58');
-- INSERT INTO clothingDB.payment_method VALUES ("pay_AJ4", 1, 50, '2023-06-02 10:33:21');
-- INSERT INTO clothingDB.payment_method VALUES ("pay_AR7", 0, 0, '2019-01-17 14:44:10');
-- INSERT INTO clothingDB.payment_method VALUES ("pay_AA9", 1, 50, '2021-05-5 23:59:15');
-- INSERT INTO clothingDB.payment_method VALUES ("pay_AJ5", 0, 0, '2020-08-25 17:36:55');
-- show items in payment_method table;
-- SELECT * FROM payment_method;
-- DELETE FROM payment_method where payment_method_id = "pay_AJ5"


-- Inserting record for delivery_method table
-- INSERT INTO clothingDB.delivery_method VALUES ("del_A17", 0, 70, '2010-11-12 10:00:00');
-- INSERT INTO clothingDB.delivery_method VALUES ("del_A03", 1, 20, '2021-05-8 16:09:34');
-- INSERT INTO clothingDB.delivery_method VALUES ("del_B19", 1, 50, '2023-06-07 23:45:49');
-- show items in delivery_method table
-- SELECT * FROM delivery_method;


-- Inserting record for user table
-- INSERT INTO clothingDB.user VALUES ("user_07", "Oghenekaro", "customer", "oghenekaro57@gmail.com");
-- INSERT INTO clothingDB.user VALUES ("user_15", "Emmanuella", "cashier", "oghenekaro27@gmail.com");
-- INSERT INTO clothingDB.user VALUES ("user_71", "Ellahhh", "admin", "oghenekaro571@gmail.com");
-- show items in user table
-- SELECT * FROM user;