-- Lista nome do cliente e data da compra
SELECT c.nome, cp.data_compra
FROM clientes c
INNER JOIN compras cp ON c.id = cp.cliente_id;

--INNER JOIN une as tabelas clientes e compras onde os IDs correspondem.

-- Lista todos os clientes e suas compras (se houver)
SELECT c.nome, cp.valor_compra
FROM clientes c
LEFT JOIN compras cp ON c.id = cp.cliente_id;

--LEFT JOIN retorna todos os clientes, mesmo que não tenham compras registradas.

-- Lista compras que não têm cliente associado
SELECT cp.id, cp.valor_compra
FROM compras cp
RIGHT JOIN clientes c ON c.id = cp.cliente_id
WHERE c.id IS NULL;

--RIGHT JOIN com filtro WHERE c.id IS NULL mostra compras órfãs (sem cliente vinculado).
