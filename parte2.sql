INSERT INTO Clientes (nome, endereco, email, celular, dataNascimento)
VALUES
    ('Alana Bittencourt', 'Rua Verde, 256', 'alana.bittencourt@gmail.com', '(11) 1111-2222', '2004-03-25'),
    ('Gabriela Martinez', 'Rua Amarela, 898', 'gabi_martinez@outlook.com', '(11) 2222-3333', '2007-01-10'),
    ('Lucas Rodrigues', 'Rua Azul, 789', 'rodrigueslucas@gmail.com', '(11) 3333-4444', '1998-11-05'),
    ('Sarah Kavagouth', 'Rua Rosa, 647', 'kavagouths@outlook.com', '(11) 4444-5555', '2008-03-16'),
    ('Arthur Duarte', 'Rua Roxa, 343', 'duarte.arthur@gmail.com', '(11) 5555-6666', '2007-03-02'),
    ('Anny Castro', 'Rua Vermelha, 554', 'annycastro@hotmail.com', '(11) 6666-7777', '1999-04-23'),
    ('Guilherme Belmonte', 'Rua Laranja, 919', 'guibelmonte@gmail.com', '(11) 7777-8888', '1980-07-07'),
    ('Mariana Almeida', 'Rua Branca, 807', 'mari_almeida@outlook.com', '(11) 8888-9999', '2010-08-19'),
    ('Mateus Duarte', 'Rua Violeta, 437', 'mateusduarte@gmail.com', '(11) 9999-0000', '2008-09-13'),
    ('Alice Furtado', 'Rua LIlás, 952', 'alice.furtado@gmail.com', '(11) 0000-0101', '2005-06-05');
    
    
    INSERT INTO Produtos (nome, preco, descricao, quantidadeEstoque)
VALUES
    ('Base', 119,99, 'Base fluida HD claro 20 30ml', 25),
    ('Corretivo', 49.99, 'Corretivo claro 20 10ml', 200),
    ('Pó translúcido', 65.90, 'Pó translúcido 90g', 100),
    ('Pó compacto', 52.99, 'Pó compacto claro 20 50g', 50),
    ('Contorno', 49.99, 'Contorno em pó médio 26 90g', 42),
    ('Blush', 39.99, 'Blush em pó coral 30g', 112),
    ('Iluminador', 59.99, 'Iluminador em pó 20g', 05),
    ('Paleta de sombra', 230.00, 'Paleta de sombra tons neutros 100g', 23),
    ('Caneta delineadora', 45.99, 'Caneta delineadora preta 10ml', 01),
    ('Gloss', 20.99, 'Gloss incolor 8ml', 96);
    
    INSERT INTO Pedidos (IDCliente, dataCompra, valorTotal, dataEstimadaEntrega)
VALUES
    (1, '2024-03-25', 119.99, '2024-04-01'),
    (2, '2024-03-25', 49.99, '2024-04-01'),
    (3, '2024-03-25', 65.90, '2024-04-01'),
    (4, '2024-03-25', 52.99, '2024-04-01'),
    (5, '2024-03-26', 49.99, '2024-04-02'),
    (6, '2024-03-27', 39.99, '2024-04-02'),
    (7, '2024-03-27', 59.99, '2024-04-02'),
    (8, '2024-03-28', 230.00, '2024-04-03'),
    (9, '2024-03-28', 45.99, '2024-04-03'),
    (10, '2024-03-28', 20.99, '2024-04-03');
    
    INSERT INTO ItensPedido (IDPedido, IDProduto, quantidade, valorUnitario, valorTotal)
VALUES
    (1, 1, 1, 119.99, 119.99),
    (2, 2, 1, 49.99, 49.99),
    (3, 3, 1, 65.90, 65.90),
    (4, 4, 1, 52.99, 52.99),
    (5, 5, 1, 49.99, 49.99),
    (6, 6, 1, 39.99, 39.99),
    (7, 7, 1, 59.99, 59.99),
    (8, 8, 1, 230.00, 230.00),
    (9, 9, 1, 45.99, 45.99),
    (10, 10, 1, 20.99, 20.99);


UPDATE Clientes
SET nome = 'Anny Castro', email = 'castroannyy@gmail.com'
WHERE IDCliente = 6;


UPDATE Produtos
SET quantidadeEstoque = 100
WHERE IDProduto = 8;

DELETE FROM Pedidos
WHERE IDPedido = 1;

DELETE FROM ItensPedido
WHERE IDItemPedido = 1;