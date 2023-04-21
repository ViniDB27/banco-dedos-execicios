CREATE VIEW vwProdutos AS
SELECT idProduto AS Código,
       nomeProduto AS Produto,
       Fabricante,
       Quantidade,
       VlUnitario AS ValorUnitario,
       tipo
FROM produtos
WHERE VlUnitario > 499.00

ALTER VIEW vwProdutos AS
SELECT idProduto AS Código,
       nomeProduto AS Produto,
       Fabricante,
       Quantidade,
       VlUnitario AS ValorUnitario,
       tipo
FROM produtos
WHERE VlUnitario > 499.00;

DROP VIEW vwProdutos;