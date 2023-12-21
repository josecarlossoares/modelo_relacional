--selecao de dados
SELECT * FROM transacoes;

--renomeando colunas
SELECT
    IDTransacao AS 'ID Transacão',
    DataTransacao AS 'Data',
    ValorTransacao AS 'Valor'
FROM transacoes;

--filtragemm comm where
SELECT * FROM transacoes
WHERE ValorTransacao > 100.00;

--Ordenacao com order by
SELECT * FROM transacoes
ORDER BY ValorTransacao DESC;

--agregacao com funcoes sql
SELECT
    AVG(ValorTransacao) AS 'Média de Valor',
    MAX(ValorTransacao) AS 'Valor Máximo',
    MIN(ValorTransacao) AS 'Valor Mínimo',
    COUNT(*) AS 'Total de Transações'
FROM transacoes;

--agrupamento com a clausula group by
SELECT
    Produto,
    AVG(ValorTransacao) AS 'Média de Valor por Produto'
FROM transacoes
GROUP BY Produto;

--consulta combinada
SELECT
    Categoria,
    COUNT(*) AS 'Quantidade de Produtos Vendidos',
    SUM(ValorTransacao) AS 'Valor Total das Vendas',
    AVG(ValorTransacao) AS 'Média de Valor por Transação'
FROM transacoes
GROUP BY Categoria;