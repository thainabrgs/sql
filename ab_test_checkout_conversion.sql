-- Compara a taxa de conversão entre variantes de uma página de checkout no dataset thelook_ecommerce, permitindo identificar a versão com melhor performance.


SELECT
  variant,
  COUNTIF(purchased = TRUE) / COUNT(*) AS taxa_conversao
FROM
  `bigquery-public-data.thelook_ecommerce.orders`
GROUP BY
  variant
ORDER BY
  taxa_conversao DESC;
