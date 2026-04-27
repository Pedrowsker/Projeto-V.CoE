CREATE TABLE vendas_processadas (
    ID_Pedido INTEGER,
    Produto TEXT,
    Quantidade INTEGER,
    Preco_Unit REAL,
    Receita_Total REAL
);

CREATE TABLE metas_produtos (
    Produto TEXT,
    Meta_Valor REAL
);


INSERT INTO vendas_processadas VALUES (101, 'Cimento CP-II', 50, 32.50, 1625.00);
INSERT INTO vendas_processadas VALUES (102, 'Argamassa', 20, 25.00, 500.00);
INSERT INTO vendas_processadas VALUES (103, 'Cimento CP-II', 15, 32.50, 487.50);
INSERT INTO vendas_processadas VALUES (201, 'Cimento CP-II', 10, 34.12, 341.25); -- Exemplo do int convertido
INSERT INTO vendas_processadas VALUES (202, 'Concrete_Mix', 5, 78.75, 393.75);

INSERT INTO metas_produtos VALUES ('Cimento CP-II', 1000.00);
INSERT INTO metas_produtos VALUES ('Argamassa', 600.00);
INSERT INTO metas_produtos VALUES ('Concrete_Mix', 100.00);

SELECT 
    v.Produto, 
    SUM(v.Receita_Total) AS Faturamento,
    m.Meta_Valor
FROM vendas_processadas v
JOIN metas_produtos m ON v.Produto = m.Produto
GROUP BY v.Produto
HAVING SUM(v.Receita_Total) > 500
ORDER BY Faturamento DESC;