-- Prompt 1: Order items by price
SELECT * 
FROM target 
ORDER BY price;
-- Cozy Throw Blanket is the cheapest item ($24.99); Smart LED TV is the most expensive ($549.00).

-- Prompt 2: A statistic about item prices (average price)
SELECT AVG(price) 
FROM target;
-- The average price across all items is $142.35.

-- Prompt 3: A statistic about Kitchen Supplies prices (average price)
SELECT AVG(price) 
FROM target
WHERE category = 'Kitchen Supplies';
-- The average price of Kitchen Supplies items is $58.61.

-- Question 1: Which item has the highest customer rating?
SELECT item_name, average_rating 
FROM target
ORDER BY average_rating DESC 
LIMIT 1;
-- Premium Coffee Maker has the highest customer rating at 4.9.

-- Question 2: How many items are in the "Electronics" category?
SELECT COUNT(*) 
FROM target 
WHERE category = 'Electronics';
-- There are 4 items in the "Electronics" category.

-- Question 3: What's the total value of all stock in "Appliances"?
SELECT SUM(price * stock_quantity) 
FROM target 
WHERE category = 'Appliances';
-- The total value of the "Appliances" stock is $14,011.00.

-- Question 4: Which item has the most stock?
SELECT item_name, stock_quantity
FROM target 
ORDER BY stock_quantity DESC 
LIMIT 1;
-- Cozy Throw Blanket has the most stock at 100.

-- Question 5: Which item has the lowest customer rating?
SELECT item_name, average_rating 
FROM target 
ORDER BY average_rating ASC 
LIMIT 1;
-- Smart Home Security Camera has the lowest customer rating at 4.1.

-- Question 6: What's the average price for each category?
SELECT category, AVG(price) AS avg_price
FROM superstore
GROUP BY category;
-- Appliances: $126.32, Electronics: $179.73, Furnishings: $200.74, Kitchen Supplies: $58.61.
