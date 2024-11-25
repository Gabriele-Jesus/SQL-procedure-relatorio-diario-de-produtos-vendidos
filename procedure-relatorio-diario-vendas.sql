DELIMITER $$

CREATE PROCEDURE relatorio_diario_vendas(IN data_especifica DATE)
BEGIN
    -- Relatório de quantidade de produtos vendidos por dia
    SELECT p.nome_produto, SUM(v.quantidade) AS quantidade_vendida
    FROM vendas v
    INNER JOIN produtos p ON v.id_produto = p.id_produto
    WHERE v.data_venda = data_especifica
    GROUP BY p.nome_produto;
END $$

DELIMITER ;
