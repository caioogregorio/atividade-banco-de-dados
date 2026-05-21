INSERT INTO tb_ESTADOS VALUES
(1, 'São Paulo', 'SP'),
(2, 'Rio de Janeiro', 'RJ'),
(3, 'Minas Gerais', 'MG'),
(4, 'Paraná', 'PR'),
(5, 'Santa Catarina', 'SC');

INSERT INTO tb_CIDADES VALUES
(1, 'Santos', 1),
(2, 'Campinas', 1),
(3, 'Rio de Janeiro', 2),
(4, 'Niterói', 2),
(5, 'Belo Horizonte', 3),
(6, 'Uberlândia', 3),
(7, 'Curitiba', 4),
(8, 'Londrina', 4),
(9, 'Florianópolis', 5),
(10, 'Joinville', 5);

INSERT INTO tb_CLIENTES VALUES
(1, 'Ana Souza', 1),
(2, 'Carlos Lima', 2),
(3, 'Fernanda Alves', 3),
(4, 'Ricardo Mendes', 5),
(5, 'Juliana Rocha', 7);

INSERT INTO tb_CATEGORIAS VALUES
(1, 'Calçados'),
(2, 'Vestuário'),
(3, 'Acessórios'),
(4, 'Esportes');

INSERT INTO tb_PRODUTOS VALUES
(1, 'Tênis Running', 1, 399.90),
(2, 'Camiseta Dry Fit', 2, 89.90),
(3, 'Relógio Esportivo', 3, 599.90),
(4, 'Mochila Esportiva', 3, 199.90),
(5, 'Bola de Futebol', 4, 129.90);

INSERT INTO tb_VENDAS VALUES
(1, 1, 1, '2026-05-01', 1),
(2, 2, 2, '2026-05-02', 3),
(3, 1, 3, '2026-05-03', 1),
(4, 3, 5, '2026-05-03', 2),
(5, 4, 1, '2026-05-04', 1),
(6, 5, 4, '2026-05-05', 2),
(7, 2, 5, '2026-05-06', 1),
(8, 3, 2, '2026-05-06', 4),
(9, 1, 4, '2026-05-07', 1),
(10, 4, 3, '2026-05-08', 1);
