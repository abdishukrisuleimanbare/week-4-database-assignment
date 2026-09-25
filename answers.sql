
-- Week 4 Database Assignment
-- Advanced SQL Queries and Aggregations
-- Student: Abdishukri Suleiman Bare

-- Question 1:
-- Total payment amount for each payment date.
-- Sort by latest date and show only the top 5 dates.

SELECT
    paymentDate,
    SUM(amount) AS total_amount
FROM payments
GROUP BY paymentDate
ORDER BY paymentDate DESC
LIMIT 5;


-- Question 2:
-- Average credit limit for each customer.
-- Display customer name, country, and average credit limit.

SELECT
    customerName,
    country,
    AVG(creditLimit) AS average_credit_limit
FROM customers
GROUP BY customerName, country;


-- Question 3:
-- Total price of products ordered.
-- Display product code, quantity ordered, and total price.

SELECT
    productCode,
    quantityOrdered,
    SUM(quantityOrdered * priceEach) AS total_price
FROM orderdetails
GROUP BY productCode, quantityOrdered;


-- Question 4:
-- Highest payment amount for each check number.

SELECT
    checkNumber,
    MAX(amount) AS highest_amount
FROM payments
GROUP BY checkNumber;
