-- FIRST SOLUTION:
SELECT name, brand, description, price
FROM smartphone
WHERE price = (SELECT MAX(price) FROM smartphone);

-- SECOND SOLUTION:
SELECT name, brand, description, price
FROM smartphone
ORDER BY price DESC
LIMIT 1;