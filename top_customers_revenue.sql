-- Identifica os clientes mais ativos e que geram maior receita, calculando total de pedidos e receita acumulada por cliente, útil para segmentação e estratégias de fidelização.


SELECT
  customer_id,
  COUNT(order_id) AS total_pedidos,
  SUM(price) AS receita_total
FROM
  `bigquery-public-data.thelook_ecommerce.orders`
GROUP BY
  customer_id
ORDER BY
  receita_total DESC
LIMIT 10;
