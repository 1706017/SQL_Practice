SELECT v.customer_id as customer_id ,COUNT(v.customer_id) as count_no_trans
FROM Visits as v LEFT JOIN Tranasactions as t
ON v.visit_id = t.visit_id
WHERE t.transaction_id IS NULL
GROUP BY v.customer_id;
