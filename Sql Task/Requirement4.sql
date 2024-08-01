SELECT name, brand, description, price, COUNT(*) AS times_purchased
FROM smartphone AS S
INNER JOIN transaction AS T ON S.smartphone_id=T.smartphone_id
GROUP BY S.smartphone_id
ORDER BY times_purchased DESC
LIMIT 1;