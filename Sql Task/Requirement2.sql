SELECT firstname, lastname, email
From customer AS C
LEFT JOIN transaction AS T ON C.customer_id=T.customer_id
WHERE T.customer_id IS NULL;