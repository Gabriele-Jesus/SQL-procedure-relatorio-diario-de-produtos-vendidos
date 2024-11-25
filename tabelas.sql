--  vamos criar uma procedure que gere um relatório diário da quantidade de produtos comprados por dia. Suponhamos que o banco de dados tenha as tabelas de produtos e vendas. A tabela produtos pode armazenar informações sobre os produtos, enquanto a tabela vendas pode registrar as transações realizadas.


CREATE TABLE produtos (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(255),
    preco DECIMAL(10, 2)
);


CREATE TABLE vendas (
    id_venda INT AUTO_INCREMENT PRIMARY KEY,
    id_produto INT,
    quantidade INT,
    data_venda DATE,
    FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);
