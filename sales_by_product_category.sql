-- Análise de vendas por categoria de produto usando o dataset público thelook_ecommerce. 
-- A consulta calcula o total de pedidos, receita total e ticket médio por categoria, permitindo identificar os segmentos mais rentáveis para apoiar decisões estratégicas de negócio.


SELECT
  product_category AS categoria,
  COUNT(order_id) AS total_pedidos,
  SUM(price) AS receita_total,
  AVG(price) AS ticket_medio
FROM
  `bigquery-public-data.thelook_ecommerce.orders`
GROUP BY
  product_category
ORDER BY
  receita_total DESC
LIMIT 10;
