### **1. Explore the Schema**
- Identify all the tables in the `kinternship2025` database.

mysql> show tables
    -> ;
+---------------------------+
| Tables_in_kinternship2025 |
+---------------------------+
| customers                 |
| order_items               |
| orders                    |
| payments                  |
| products                  |
+---------------------------+
5 rows in set (0.01 sec)


- For each table, determine:
  - Table name
  - Column names and data types
  - Primary keys and foreign keys (if any)

  mysql> describe customers;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| customer_id | varchar(255) | NO   | PRI | NULL    |       |
| first_name  | varchar(255) | YES  |     | NULL    |       |
| last_name   | varchar(255) | YES  |     | NULL    |       |
| email       | varchar(255) | YES  |     | NULL    |       |
| phone       | varchar(255) | YES  |     | NULL    |       |
| address     | varchar(255) | YES  |     | NULL    |       |
| city        | varchar(255) | YES  |     | NULL    |       |
| state       | varchar(255) | YES  |     | NULL    |       |
| postal_code | varchar(255) | YES  |     | NULL    |       |
| country     | varchar(255) | YES  |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
10 rows in set (0.00 sec)

mysql> describe  order_items;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| order_id   | varchar(255) | YES  |     | NULL    |       |
| product_id | varchar(255) | YES  |     | NULL    |       |
| quantity   | varchar(255) | YES  |     | NULL    |       |
| price      | varchar(255) | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> describe  orders;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| order_id     | varchar(255) | NO   | PRI | NULL    |       |
| customer_id  | varchar(255) | YES  |     | NULL    |       |
| order_date   | varchar(255) | YES  |     | NULL    |       |
| status       | varchar(255) | YES  |     | NULL    |       |
| total_amount | varchar(255) | YES  |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
5 rows in set (0.01 sec)

mysql> describe  payments;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| order_id       | varchar(255) | YES  |     | NULL    |       |
| payment_date   | varchar(255) | YES  |     | NULL    |       |
| amount         | varchar(255) | YES  |     | NULL    |       |
| payment_method | varchar(255) | YES  |     | NULL    |       |
| status         | varchar(255) | YES  |     | NULL    |       |
+----------------+--------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> describe  products;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| product_id   | varchar(255) | NO   | PRI | NULL    |       |
| product_name | varchar(255) | YES  |     | NULL    |       |
| description  | varchar(255) | YES  |     | NULL    |       |
| price        | varchar(255) | YES  |     | NULL    |       |
| stock        | varchar(255) | YES  |     | NULL    |       |
| category_id  | varchar(255) | YES  |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
6 rows in set (0.00 sec)


### **4. Analyze Table Data**
- Determine the number of rows in each table.
mysql> select count(*) from customers
    -> ;
+----------+
| count(*) |
+----------+
|       15 |
+----------+
1 row in set (0.02 sec)

mysql> select count(*) from order_items;
+----------+
| count(*) |
+----------+
|      315 |
+----------+
1 row in set (0.00 sec)

mysql> select count(*) from orders;
+----------+
| count(*) |
+----------+
|      100 |
+----------+
1 row in set (0.00 sec)

mysql> select count(*) from payments;
+----------+
| count(*) |
+----------+
|      100 |
+----------+
1 row in set (0.01 sec)

mysql> select count(*) from products;
+----------+
| count(*) |
+----------+
|       16 |
+----------+
1 row in set (0.00 sec)


- Provide insights such as:

  - Total number of orders in the system.

  mysql> select count(*) from orders;
+----------+
| count(*) |
+----------+
|      100 |
+----------+
1 row in set (0.00 sec)

  - The most expensive product.
  mysql> select * from products where price = (select max(price) from products);
+------------+--------------+-------------------------+--------+-------+-------------+
| product_id | product_name | description             | price  | stock | category_id |
+------------+--------------+-------------------------+--------+-------+-------------+
| 2          | Laptop       | High-performance laptop | 999.99 | 30    | 1           |
+------------+--------------+-------------------------+--------+-------+-------------+
1 row in set (0.00 sec)
  - Total revenue from all orders.
  mysql> select sum( total_amount) from orders;
+--------------------+
| sum( total_amount) |
+--------------------+
| 52427.110000000015 |
+--------------------+
1 row in set (0.00 sec)
  - The customer who has placed the most orders.
  


