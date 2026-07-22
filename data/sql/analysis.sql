```sql
/* ============================================================
   PROJECT: E-Commerce Order Investigation
   AUTHOR : Prem
   PURPOSE: SQL60 - Week 1 SQL Foundations Mini Project
   ============================================================ */


/* ============================================================
   STEP 2 – BASIC DATA EXPLORATION
   ============================================================ */

/* Q5. Display the first 5 orders */

SELECT *
FROM orders
LIMIT 5;


/* Q6. Display all unique customer statuses */

SELECT DISTINCT customer_status
FROM customers;


/* Q7. Display all payment methods currently used */

SELECT DISTINCT payment_method
FROM orders;


/* Q8. Display customers whose city information is missing */

SELECT
    customer_id,
    customer_name,
    city
FROM customers
WHERE city IS NULL;


/* Q9. Display products that are currently out of stock */

SELECT
    product_id,
    product_name,
    stock_status
FROM products
WHERE stock_status = 'Out of Stock';



/* ============================================================
   STEP 3 – BUSINESS FILTERING
   ============================================================ */

/* Q10. Orders worth more than ₹20,000 */

SELECT
    order_id,
    customer_id,
    order_value,
    order_status
FROM orders
WHERE order_value > 20000;


/* Q11. Delivered orders that took at least 7 days.
         Display highest-value orders first */

SELECT
    order_id,
    customer_id,
    order_value,
    order_status,
    delivery_days
FROM orders
WHERE order_status = 'Delivered'
  AND delivery_days >= 7
ORDER BY order_value DESC;


/* Q12. Inactive customers living in Hyderabad or Bengaluru */

SELECT
    customer_id,
    customer_name,
    city,
    customer_status
FROM customers
WHERE customer_status = 'Inactive'
  AND city IN ('Hyderabad', 'Bengaluru');


/* Q13. Products priced between ₹5,000 and ₹20,000
         and not out of stock */

SELECT
    product_id,
    product_name,
    category,
    price,
    stock_status
FROM products
WHERE price BETWEEN 5000 AND 20000
  AND stock_status != 'Out of Stock'
ORDER BY price DESC;



/* ============================================================
   STEP 4 – PATTERN SEARCHING
   ============================================================ */

/* Q14. Customers whose names start with A */

SELECT
    customer_name
FROM customers
WHERE customer_name LIKE 'A%';


/* Q15. Products whose names contain "Table" */

SELECT
    product_name
FROM products
WHERE product_name LIKE '%Table%';


/* Q16. Customers whose names end with 'a' */

SELECT
    customer_name
FROM customers
WHERE customer_name LIKE '%a';



/* ============================================================
   STEP 5 – BUSINESS SEGMENTATION
   ============================================================ */

/* Q17. Order Value Segmentation */

SELECT
    order_id,
    customer_id,
    order_value,

    CASE
        WHEN order_value >= 30000 THEN 'High Value'
        WHEN order_value >= 10000 THEN 'Medium Value'
        ELSE 'Low Value'
    END AS order_segment

FROM orders
ORDER BY order_value DESC;


/* Q18. Delivery Performance Classification */

SELECT
    order_id,
    order_status,
    delivery_days,

    CASE
        WHEN delivery_days IS NULL THEN 'Not Delivered'
        WHEN delivery_days <= 3 THEN 'Fast Delivery'
        WHEN delivery_days <= 6 THEN 'Standard Delivery'
        ELSE 'Delayed Delivery'
    END AS delivery_performance

FROM orders;



/* ============================================================
   STEP 6 – BUSINESS INVESTIGATION
   ============================================================ */

/* Q19. Priority Orders */

SELECT
    order_id,
    customer_id,
    order_value,
    order_status,
    payment_method,
    delivery_days

FROM orders

WHERE order_value >= 15000
  AND payment_method IN ('Credit Card', 'UPI')
  AND order_status != 'Cancelled'
  AND (
        delivery_days > 5
        OR delivery_days IS NULL
      )

ORDER BY order_value DESC;



/* Q20. Order Attention Report */

SELECT
    order_id,
    customer_id,
    order_value,
    order_status,
    delivery_days,

    CASE
        WHEN order_status = 'Cancelled'
            THEN 'Immediate Review'

        WHEN order_value >= 30000
             AND delivery_days IS NULL
            THEN 'High-Value Pending'

        WHEN delivery_days > 7
            THEN 'Delivery Issue'

        WHEN order_value >= 20000
            THEN 'High-Value Order'

        ELSE 'Normal'
    END AS attention_category

FROM orders

WHERE order_value >= 5000

ORDER BY order_value DESC;
```
