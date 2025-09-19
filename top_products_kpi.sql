-- Calcula os produtos mais vendidos, sua receita e participação na receita total, permitindo monitorar KPIs e apoiar decisões de estoque e marketing.


WITH total_receita AS (
  SELECT SUM(price) AS receita_total
  FROM `bigquery-public-data.thelook_ecommerce.orders`
)
SELECT
  product_name,
  COUNT(order_id) AS qtd_vendida,
  SUM(price) AS receita,
  SUM(price)/tr.receita_total AS participacao_receita
FROM
  `bigquery-public-data.thelook_ecommerce.orders` o,
  total_receita tr
GROUP BY
  product_name, tr.receita_total
ORDER BY
  receita DESC
LIMIT 10;
