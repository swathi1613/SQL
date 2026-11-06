CREATE TABLE corporate_stores (
    store_id INT PRIMARY KEY,
    city_location VARCHAR(50) NOT NULL
);

CREATE TABLE daily_register_sales (
    transaction_id INT PRIMARY KEY,
    store_id INT,
    sale_amount DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (store_id) REFERENCES corporate_stores(store_id)
);