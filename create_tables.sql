CREATE TABLE tb_ESTADOS (
	id_estado INT PRIMARY KEY,
    nm_estado VARCHAR(50),
    nm_sigla CHAR(2) UNIQUE
);

CREATE TABLE tb_CIDADES (
	id_cidade INT PRIMARY KEY,
    nm_cidade VARCHAR(50),
    id_estado INT,
    FOREIGN KEY (id_estado)
    REFERENCES tb_ESTADOS(id_estado)
);

CREATE TABLE tb_CLIENTES (
	id_cliente INT PRIMARY KEY,
    nm_cliente VARCHAR(100),
    id_cidade INT,
    FOREIGN KEY (id_cidade)
    REFERENCES tb_CIDADES(id_cidade)
);

CREATE TABLE tb_CATEGORIAS (
	id_categoria INT PRIMARY KEY,
    nm_categoria VARCHAR(50)
);

CREATE TABLE tb_PRODUTOS (
	id_produto INT PRIMARY KEY,
    nm_PRODUTO VARCHAR(50),
    id_categoria INT,
    vl_preco DECIMAL(10,2),
    FOREIGN KEY (id_categoria)
    REFERENCES tb_CATEGORIAS(id_categoria)
);

CREATE TABLE tb_VENDAS (
	id_venda INT PRIMARY KEY,
    id_cliente INT,
    id_produto INT,
    dt_venda DATE,
    qt_produto INT,
    FOREIGN KEY (id_cliente)
    REFERENCES tb_CLIENTES(id_cliente),
    FOREIGN KEY (id_produto)
    REFERENCES tb_PRODUTOS(id_produto)
);
