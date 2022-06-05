DROP TABLE IF EXISTS user_details;
 
CREATE TABLE user_details (
  id INT AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(100) NOT NULL,
  last_name VARCHAR(100) NOT NULL,
  role VARCHAR(25) NOT NULL
);
 
INSERT INTO user_details (first_name, last_name, role) VALUES
  ('admin', 'user', 'admin'),
  ('manager', 'user', 'manager'),
  ('supply1', 'user', 'waiter'),
  ('supply2', 'user', 'waiter');

DROP TABLE IF EXISTS food_order;
DROP TABLE IF EXISTS food_menu;

CREATE TABLE food_menu (
  id INT AUTO_INCREMENT PRIMARY KEY,
  item VARCHAR(100) NOT NULL,
  category VARCHAR(10) NOT NULL,
  price INT NOT NULL
);

INSERT INTO food_menu (item, category, price) VALUES
  ('masala dosa', 'veg', 50),
  ('chicken biryani', 'non-veg', 150),
  ('fried rice', 'non-veg', 100),
  ('alfaham', 'non-veg', 180);
  
CREATE TABLE food_order (
  id INT AUTO_INCREMENT PRIMARY KEY,
  customer_id INT NOT NULL,
  table_no INT NOT NULL,
  menu_item INT NOT NULL,
  quantity INT NOT NULL,
  order_time TIMESTAMP NOT NULL,
  FOREIGN KEY (menu_item) REFERENCES food_menu(id)
);

INSERT INTO food_order (customer_id, table_no, menu_item, quantity, order_time) VALUES
  (123, 7, 1, 1, CURRENT_TIMESTAMP),
  (123, 7, 2, 1, CURRENT_TIMESTAMP),
  (123, 7, 3, 2, CURRENT_TIMESTAMP),
  (123, 7, 4, 1, CURRENT_TIMESTAMP);