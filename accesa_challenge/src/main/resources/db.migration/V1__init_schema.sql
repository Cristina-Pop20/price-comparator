CREATE TABLE store (
store_id  SERIAL PRIMARY KEY,
store_name VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE product (
product_id  VARCHAR(10) PRIMARY KEY,
product_name VARCHAR(255),
product_category VARCHAR(100),
product_brand VARCHAR(100)
);

CREATE TABLE price_entry (
price_entry_id  SERIAL PRIMARY KEY,
product_id VARCHAR(10) REFERENCES product(product_id),
store_id INT REFERENCES store(store_id),
price_entry_quantity DOUBLE PRECISION,
price_entry_unit VARCHAR(20),
price DOUBLE PRECISION,
currency VARCHAR(10),
date DATE
);

CREATE TABLE discount (
discount_id  SERIAL PRIMARY KEY,
product_id VARCHAR(10) REFERENCES product(product_id),
store_id INT REFERENCES store(store_id),
discount_quantity DOUBLE PRECISION,
discount_unit VARCHAR(20),
from_date DATE,
to_date DATE,
percentage INT
);

CREATE TABLE app_user (
user_id SERIAL PRIMARY KEY,
email VARCHAR(100) NOT NULL
);

CREATE TABLE price_alert (
alert_id SERIAL PRIMARY KEY,
user_id INT REFERENCES app_user(user_id),
product_id VARCHAR(10) REFERENCES product(product_id),
target_price DOUBLE PRECISION
);
