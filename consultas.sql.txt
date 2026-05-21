-- Questão 1
SELECT *
FROM tb_VENDAS
WHERE dt_venda BETWEEN '2026-05-01' AND '2026-05-31';

-- Questão 2
SELECT
    p.nm_produto,
    SUM(v.qt_produto) AS total_vendido
FROM tb_VENDAS v
JOIN tb_PRODUTOS p
    ON v.id_produto = p.id_produto
GROUP BY p.nm_produto;

-- Questão 3
SELECT
    p.nm_produto,
    SUM(v.qt_produto * p.vl_preco) AS valor_total
FROM tb_VENDAS v
JOIN tb_PRODUTOS p
    ON v.id_produto = p.id_produto
GROUP BY p.nm_produto;

-- Questão 4
SELECT
    c.nm_cidade,
    COUNT(cl.id_cliente) AS quantidade_clientes
FROM tb_CIDADES c
LEFT JOIN tb_CLIENTES cl
    ON c.id_cidade = cl.id_cidade
GROUP BY c.nm_cidade;

-- Questão 5
SELECT *
FROM tb_PRODUTOS
ORDER BY vl_preco DESC;

-- Questão 6
SELECT
    SUM(v.qt_produto * p.vl_preco) AS faturamento_total
FROM tb_VENDAS v
JOIN tb_PRODUTOS p
    ON v.id_produto = p.id_produto;
    
-- Questão 7
SELECT
    c.nm_categoria,
    SUM(v.qt_produto * p.vl_preco) AS faturamento
FROM tb_VENDAS v
JOIN tb_PRODUTOS p
    ON v.id_produto = p.id_produto
JOIN tb_CATEGORIAS c
    ON p.id_categoria = c.id_categoria
GROUP BY c.nm_categoria
ORDER BY faturamento DESC
LIMIT 1;

-- Questão 8
SELECT
    p.nm_produto,
    SUM(v.qt_produto) AS total_vendido
FROM tb_VENDAS v
JOIN tb_PRODUTOS p
    ON v.id_produto = p.id_produto
GROUP BY p.nm_produto
ORDER BY total_vendido DESC
LIMIT 3;

-- Questão 9
SELECT
    AVG(v.qt_produto * p.vl_preco) AS ticket_medio
FROM tb_VENDAS v
JOIN tb_PRODUTOS p
    ON v.id_produto = p.id_produto;
    
-- Questão 10
SELECT
    c.nm_cliente,
    SUM(v.qt_produto * p.vl_preco) AS total_comprado
FROM tb_VENDAS v
JOIN tb_CLIENTES c
    ON v.id_cliente = c.id_cliente
JOIN tb_PRODUTOS p
    ON v.id_produto = p.id_produto
GROUP BY c.nm_cliente
ORDER BY total_comprado DESC
LIMIT 1;

-- Questão 11
SELECT
    e.nm_estado,
    COUNT(DISTINCT cl.id_cliente) AS quantidade_clientes,
    SUM(v.qt_produto * p.vl_preco) AS valor_total_comprado
FROM tb_ESTADOS e
JOIN tb_CIDADES ci
    ON e.id_estado = ci.id_estado
JOIN tb_CLIENTES cl
    ON ci.id_cidade = cl.id_cidade
JOIN tb_VENDAS v
    ON cl.id_cliente = v.id_cliente
JOIN tb_PRODUTOS p
    ON v.id_produto = p.id_produto
GROUP BY e.nm_estado;

-- Questão 12
INSERT INTO tb_CATEGORIAS
VALUES (5, 'Fitness');

INSERT INTO tb_PRODUTOS
VALUES (6, 'Camiseta de Corrida', 5, 99.90);


-- Questão 13
UPDATE tb_PRODUTOS
SET vl_preco = vl_preco * 1.10
WHERE id_categoria = 1;

-- Questão 14
DELETE FROM tb_VENDAS
WHERE id_produto IN (
    SELECT id_produto
    FROM tb_PRODUTOS
    WHERE id_categoria = 1
);

DELETE FROM tb_PRODUTOS
WHERE id_categoria = 1;

DELETE FROM tb_CATEGORIAS
WHERE id_categoria = 1;
