-- Analisa receita mensal ao longo do tempo, permitindo acompanhar tendências de vendas e apoiar projeções e planejamento estratégico.

SELECT
  EXTRACT(YEAR FROM order_date) AS ano,
  EXTRACT(MONTH FROM order_date) AS mes,
  SUM(price) AS receita_mensal
FROM
  `bigquery-public-data.thelook_ecommerce.orders`
GROUP BY
  ano, mes
ORDER BY
  ano, mes;
