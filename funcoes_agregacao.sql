-- Conta o número total de clientes
SELECT COUNT(*) AS total_clientes
FROM clientes;

--Utiliza a função de agregação COUNT(*) para contar todas as linhas da tabela clientes.

-- Calcula a média de idade dos clientes
SELECT AVG(idade) AS media_idade
FROM clientes;

--AVG(idade) retorna a média das idades dos clientes.

-- Soma o total de compras realizadas
SELECT SUM(valor_compra) AS total_compras
FROM compras;
--SUM(valor_compra) calcula o valor total das compras registradas.

-- Agrupa clientes por cidade e conta quantos há em cada uma
SELECT cidade, COUNT(*) AS qtd_clientes
FROM clientes
GROUP BY cidade
ORDER BY qtd_clientes DESC;

--Agrupa os clientes por cidade e conta quantos há em cada grupo, ordenando do maior para o menor.
