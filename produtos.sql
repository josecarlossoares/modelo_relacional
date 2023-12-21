
CREATE TABLE IF NOT EXISTS produtos (
    produtoID INT PRIMARY KEY,
    nome VARCHAR(255),
    preco DECIMAL(10, 2),
    quantidade INT
);

INSERT INTO produtos (produtoID, nome, preco, quantidade) VALUES
(1, 'smartphone', 799.99, 20),
(2, 'tablet', 349.99, 10),
(3, 'fone', 49.99, 50);

UPDATE produtos
SET preco = 849.99, quantidade = 25
WHERE produtoID = 1 AND nome = 'smartphone';

DELETE FROM produtos
WHERE nome = 'tablet';

DELETE FROM produtos
WHERE nome = 'fone';