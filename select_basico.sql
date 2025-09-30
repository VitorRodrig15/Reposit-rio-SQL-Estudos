-- Seleciona os 10 primeiros clientes
SELECT nome, email, cidade
FROM clientes
ORDER BY nome ASC
LIMIT 10;
