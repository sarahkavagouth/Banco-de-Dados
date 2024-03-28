create database ecommerce;
use ecommerce;

CREATE TABLE Clientes (
    IDCliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    endereco VARCHAR(255) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    celular VARCHAR(20) NOT NULL,
    dataNascimento DATE NOT NULL
);

CREATE TABLE Produtos (
    IDProduto INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    descricao TEXT,
    quantidadeEstoque INT NOT NULL
);

CREATE TABLE Pedidos (
    IDPedido INT PRIMARY KEY AUTO_INCREMENT,
    IDCliente INT,
    dataCompra DATE NOT NULL,
    valorTotal DECIMAL(10, 2) NOT NULL,
    dataEstimadaEntrega DATE,
    FOREIGN KEY (IDCliente) REFERENCES Clientes(IDCliente)
);

CREATE TABLE ItensPedido (
    IDItemPedido INT PRIMARY KEY AUTO_INCREMENT,
    IDPedido INT,
    IDProduto INT,
    quantidade INT NOT NULL,
    valorUnitario DECIMAL(10, 2) NOT NULL,
    valorTotal DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (IDPedido) REFERENCES Pedidos(IDPedido),
    FOREIGN KEY (IDProduto) REFERENCES Produtos(IDProduto)
);

