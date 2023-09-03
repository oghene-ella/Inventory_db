-- Create database
-- CREATE DATABASE clothingDB;

-- Create all tables
-- CREATE TABLE clothingDB.clothing_item (clothing_item_id integer, clothing_item_name varchar(255), clothing_item_description varchar (255), clothing_item_price integer, clothing_item_category varchar(255), clothing_item_size varchar(255), PRIMARY KEY (clothing_item_id))

-- CREATE Table clothingDB.admin (admin_id integer, admin_role varchar(255), admin_status boolean, user_id integer, PRIMARY KEY (admin_id), FOREIGN KEY (user_id) REFERENCES user(user_id))

-- CREATE TABLE clothingDB.customer_order (customer_order_id integer, customer_location varchar(255), customer_amount_spent integer, order_created timestamp, payment_method_id integer, clothing_item_id integer, delivery_id integer, PRIMARY KEY (customer_order_id), FOREIGN KEY (payment_method_id) REFERENCES payment_method(payment_method_id), FOREIGN KEY (clothing_item_id) references clothing_item(clothing_item_id), FOREIGN KEY (delivery_id) references delivery_method(delivery_id))

-- CREATE TABLE clothingDB.cashier (cashier_id integer, cashier_status boolean, cashier_level varchar(255), clothing_item_id integer, cashier_payroll_id integer, customer_order_id integer, user_id integer, PRIMARY KEY (cashier_id), FOREIGN KEY (clothing_item_id) REFERENCES clothing_item(clothing_item_id), FOREIGN KEY (cashier_payroll_id) references cashier_payroll(cashier_payroll_id), FOREIGN KEY (customer_order_id) references customer_order(customer_order_id), FOREIGN KEY (user_id) references user(user_id))

-- CREATE Table clothingDB.cashier_payroll (cashier_payroll_id integer, payroll_type boolean, amount_gained integer, payment_method_id integer, PRIMARY KEY (cashier_payroll_id), FOREIGN KEY (payment_method_id) REFERENCES payment_method(payment_method_id))

-- CREATE Table clothingDB.payment_method (payment_method_id integer, payment_method_type boolean, payment_charges integer, payment_time timestamp, PRIMARY KEY (payment_method_id))

-- CREATE Table clothingDB.delivery_method (delivery_id integer, delivery_type boolean, delivery_fee integer, delivery_time timestamp, PRIMARY KEY (delivery_id))

-- CREATE Table clothingDB.user (user_id integer, user_name varchar(255), user_role varchar(255), user_email varchar(255), PRIMARY KEY (user_id))

-- CREATE TABLE clothingDB.customer (customer_id integer, customer_order_id integer, user_id integer, PRIMARY KEY (customer_id), FOREIGN KEY (customer_order_id) REFERENCES customer_order(customer_order_id), FOREIGN KEY (user_id) references user(user_id))



-- USE clothingDB
-- SELECT * FROM clothing_item ;