-- Subquery: clientes com mais de 3 compras
SELECT nome
FROM clientes
WHERE id IN (
  SELECT cliente_id
  FROM compras
  GROUP BY cliente_id
  HAVING COUNT(*) > 3
);

--A subquery identifica clientes com mais de 3 compras e retorna seus nomes.

-- CTE: calcula total de compras por cliente
WITH total_por_cliente AS (
  SELECT cliente_id, SUM(valor_compra) AS total
  FROM compras
  GROUP BY cliente_id
)
SELECT c.nome, t.total
FROM clientes c
JOIN total_por_cliente t ON c.id = t.cliente_id;

--A CTE (WITH) calcula o total de compras por cliente e depois junta com a tabela clientes.

-- Função de janela: ranking de clientes por valor de compra
SELECT nome, valor_compra,
       RANK() OVER (ORDER BY valor_compra DESC) AS ranking
FROM clientes
JOIN compras ON clientes.id = compras.cliente_id;

--RANK() atribui uma posição para cada cliente com base no valor da compra.
