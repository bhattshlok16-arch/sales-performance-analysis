-- =====================================================
-- SALES PERFORMANCE ANALYSIS
-- SQL + Excel Portfolio Project
-- =====================================================

-- Dataset: Sales transactions
-- Records: 30
-- Database: MySQL

_________________________________________________________
_________________________________________________________

```sql
CREATE TABLE sales (
    order_id INT PRIMARY KEY,
    order_date DATE,
    product VARCHAR(50),
    category VARCHAR(50),
    region VARCHAR(30),
    quantity INT,
    unit_price DECIMAL(10,2),
    customer_type VARCHAR(30)
);

```

```sql
INSERT INTO sales
(order_id, order_date, product, category, region, quantity, unit_price, customer_type)
VALUES
(1001, '2025-01-03', 'Laptop', 'Electronics', 'North', 2, 55000, 'Corporate'),
(1002, '2025-01-05', 'Mouse', 'Electronics', 'South', 5, 800, 'Consumer'),
(1003, '2025-01-08', 'Office Chair', 'Furniture', 'North', 3, 7500, 'Corporate'),
(1004, '2025-01-12', 'Keyboard', 'Electronics', 'West', 4, 1500, 'Consumer'),
(1005, '2025-01-15', 'Office Desk', 'Furniture', 'East', 2, 10000, 'Corporate'),
(1006, '2025-01-20', 'Laptop', 'Electronics', 'South', 1, 55000, 'Consumer'),
(1007, '2025-01-25', 'Mouse', 'Electronics', 'North', 10, 800, 'Consumer'),
(1008, '2025-02-02', 'Office Chair', 'Furniture', 'West', 4, 7500, 'Corporate'),
(1009, '2025-02-06', 'Laptop', 'Electronics', 'East', 3, 55000, 'Corporate'),
(1010, '2025-02-10', 'Keyboard', 'Electronics', 'North', 6, 1500, 'Consumer'),
(1011, '2025-02-15', 'Office Desk', 'Furniture', 'South', 3, 10000, 'Corporate'),
(1012, '2025-02-20', 'Mouse', 'Electronics', 'West', 8, 800, 'Consumer'),
(1013, '2025-02-25', 'Office Chair', 'Furniture', 'East', 2, 7500, 'Corporate'),
(1014, '2025-03-03', 'Laptop', 'Electronics', 'North', 2, 55000, 'Corporate'),
(1015, '2025-03-08', 'Office Desk', 'Furniture', 'West', 4, 10000, 'Consumer'),
(1016, '2025-03-12', 'Mouse', 'Electronics', 'South', 15, 800, 'Consumer'),
(1017, '2025-03-18', 'Keyboard', 'Electronics', 'North', 5, 1500, 'Corporate'),
(1018, '2025-03-22', 'Office Chair', 'Furniture', 'East', 5, 7500, 'Consumer'),
(1019, '2025-03-27', 'Laptop', 'Electronics', 'South', 2, 55000, 'Corporate'),
(1020, '2025-04-02', 'Office Desk', 'Furniture', 'North', 5, 10000, 'Corporate'),
(1021, '2025-04-07', 'Mouse', 'Electronics', 'East', 12, 800, 'Consumer'),
(1022, '2025-04-11', 'Keyboard', 'Electronics', 'West', 7, 1500, 'Consumer'),
(1023, '2025-04-16', 'Laptop', 'Electronics', 'North', 3, 55000, 'Corporate'),
(1024, '2025-04-21', 'Office Chair', 'Furniture', 'South', 6, 7500, 'Consumer'),
(1025, '2025-04-28', 'Office Desk', 'Furniture', 'East', 3, 10000, 'Corporate'),
(1026, '2025-05-04', 'Laptop', 'Electronics', 'West', 2, 55000, 'Corporate'),
(1027, '2025-05-09', 'Mouse', 'Electronics', 'North', 20, 800, 'Consumer'),
(1028, '2025-05-14', 'Office Chair', 'Furniture', 'East', 4, 7500, 'Corporate'),
(1029, '2025-05-19', 'Keyboard', 'Electronics', 'South', 8, 1500, 'Consumer'),
(1030, '2025-05-25', 'Office Desk', 'Furniture', 'West', 4, 10000, 'Corporate');

```

> ``` status
> Records: 30  Duplicates: 0  Warnings: 0
> ```

```sql
select*
from sales;

```
| order\_id | order\_date | product | category | region | quantity | unit\_price | customer\_type |
|---------:|:-----------|:--------|:---------|:-------|---------:|-----------:|:--------------|
| 1001 | 2025-01-03 | Laptop | Electronics | North | 2 | 55000.00 | Corporate |
| 1002 | 2025-01-05 | Mouse | Electronics | South | 5 | 800.00 | Consumer |
| 1003 | 2025-01-08 | Office Chair | Furniture | North | 3 | 7500.00 | Corporate |
| 1004 | 2025-01-12 | Keyboard | Electronics | West | 4 | 1500.00 | Consumer |
| 1005 | 2025-01-15 | Office Desk | Furniture | East | 2 | 10000.00 | Corporate |
| 1006 | 2025-01-20 | Laptop | Electronics | South | 1 | 55000.00 | Consumer |
| 1007 | 2025-01-25 | Mouse | Electronics | North | 10 | 800.00 | Consumer |
| 1008 | 2025-02-02 | Office Chair | Furniture | West | 4 | 7500.00 | Corporate |
| 1009 | 2025-02-06 | Laptop | Electronics | East | 3 | 55000.00 | Corporate |
| 1010 | 2025-02-10 | Keyboard | Electronics | North | 6 | 1500.00 | Consumer |
| 1011 | 2025-02-15 | Office Desk | Furniture | South | 3 | 10000.00 | Corporate |
| 1012 | 2025-02-20 | Mouse | Electronics | West | 8 | 800.00 | Consumer |
| 1013 | 2025-02-25 | Office Chair | Furniture | East | 2 | 7500.00 | Corporate |
| 1014 | 2025-03-03 | Laptop | Electronics | North | 2 | 55000.00 | Corporate |
| 1015 | 2025-03-08 | Office Desk | Furniture | West | 4 | 10000.00 | Consumer |
| 1016 | 2025-03-12 | Mouse | Electronics | South | 15 | 800.00 | Consumer |
| 1017 | 2025-03-18 | Keyboard | Electronics | North | 5 | 1500.00 | Corporate |
| 1018 | 2025-03-22 | Office Chair | Furniture | East | 5 | 7500.00 | Consumer |
| 1019 | 2025-03-27 | Laptop | Electronics | South | 2 | 55000.00 | Corporate |
| 1020 | 2025-04-02 | Office Desk | Furniture | North | 5 | 10000.00 | Corporate |
| 1021 | 2025-04-07 | Mouse | Electronics | East | 12 | 800.00 | Consumer |
| 1022 | 2025-04-11 | Keyboard | Electronics | West | 7 | 1500.00 | Consumer |
| 1023 | 2025-04-16 | Laptop | Electronics | North | 3 | 55000.00 | Corporate |
| 1024 | 2025-04-21 | Office Chair | Furniture | South | 6 | 7500.00 | Consumer |
| 1025 | 2025-04-28 | Office Desk | Furniture | East | 3 | 10000.00 | Corporate |
| 1026 | 2025-05-04 | Laptop | Electronics | West | 2 | 55000.00 | Corporate |
| 1027 | 2025-05-09 | Mouse | Electronics | North | 20 | 800.00 | Consumer |
| 1028 | 2025-05-14 | Office Chair | Furniture | East | 4 | 7500.00 | Corporate |
| 1029 | 2025-05-19 | Keyboard | Electronics | South | 8 | 1500.00 | Consumer |
| 1030 | 2025-05-25 | Office Desk | Furniture | West | 4 | 10000.00 | Corporate |

```sql
SELECT
    product,
    SUM(quantity * unit_price) AS total_sales
FROM sales
GROUP BY product
ORDER BY total_sales DESC;

```
| product | total\_sales |
|:--------|------------:|
| Laptop | 825000.00 |
| Office Desk | 210000.00 |
| Office Chair | 180000.00 |
| Mouse | 56000.00 |
| Keyboard | 45000.00 |

```sql
SELECT
    category,
    SUM(quantity * unit_price) AS total_sales
FROM sales
GROUP BY category
ORDER BY total_sales DESC;

```
| category | total\_sales |
|:---------|------------:|
| Electronics | 926000.00 |
| Furniture | 390000.00 |

```sql
SELECT
    region,
    SUM(quantity * unit_price) AS total_sales
FROM sales
GROUP BY region
ORDER BY total_sales DESC;

```
| region | total\_sales |
|:-------|------------:|
| North | 498000.00 |
| East | 307100.00 |
| South | 268000.00 |
| West | 242900.00 |

```sql
SELECT
    customer_type,
    SUM(quantity * unit_price) AS total_sales
FROM sales
GROUP BY customer_type
ORDER BY total_sales DESC;

```
| customer\_type | total\_sales |
|:--------------|------------:|
| Corporate | 1045000.00 |
| Consumer | 271000.00 |

```sql
SELECT
    customer_type,
    region,
    SUM(quantity * unit_price) AS total_sales
FROM sales
GROUP BY customer_type, region
ORDER BY total_sales DESC;

```
| customer\_type | region | total\_sales |
|:--------------|:-------|------------:|
| Corporate | North | 465000.00 |
| Corporate | East | 260000.00 |
| Corporate | West | 180000.00 |
| Corporate | South | 140000.00 |
| Consumer | South | 128000.00 |
| Consumer | West | 62900.00 |
| Consumer | East | 47100.00 |
| Consumer | North | 33000.00 |

