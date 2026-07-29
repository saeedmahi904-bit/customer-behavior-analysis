SELECT customer_id, purchase_amount_(usd)
FROM customer
WHERE discount_applied = 'Yes'
AND "purchase_amount_(usd)" > (SELECT AVG("purchase_amount_(usd)") FROM customer);