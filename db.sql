-- SQLBook: Code
CREATE DATABASE ecomerce;
USE ecomerce;

CREATE TABLE usuario (
    id_usuario INT PRIMARY KEY AUTO_INCREMENT,
    nome_usuario VARCHAR(100) NOT NULL,
    data_cadastro DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    email VARCHAR(100) NOT NULL UNIQUE,
    senha_criptografada VARCHAR(255) NOT NULL,
    tipo_usuario ENUM('cliente', 'administrador', 'inativo') NOT NULL   
);

CREATE TABLE contato_usuario(
    id_contatofusuario INT PRIMARY KEY AUTO_INCREMENT,
    id_usuario INT, 
    contato VARCHAR(20) NOT NULL,
    FOREIGN KEY(id_usuario) REFERENCES usuario(id_usuario) ON DELETE CASCADE
);

CREATE TABLE endereco_usuario(
    id_enderecousuario INT PRIMARY KEY AUTO_INCREMENT,
    id_usuario INT,
    rua VARCHAR(100) NOT NULL,
    cidade VARCHAR(100) NOT NULL,    
    estado VARCHAR(100) NOT NULL,
    bairro VARCHAR(100) NOT NULL,
    cep VARCHAR(10) NOT NULL,
    numero INT NOT NULL,
    FOREIGN KEY(id_usuario) REFERENCES usuario(id_usuario) ON DELETE CASCADE
);

CREATE TABLE categoria(
    id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    nome_categoria VARCHAR(50) NOT NULL UNIQUE,
    descricao_categoria TEXT NOT NULL
);

CREATE TABLE pedido(
    id_pedido INT PRIMARY KEY AUTO_INCREMENT,
    id_usuario INT,
    status_pedidos ENUM('pendente','processando','enviado','cancelado') NOT NULL,
    data_pedido TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario) ON DELETE CASCADE
);

CREATE TABLE pagamento (
    id_pagamento INT PRIMARY KEY AUTO_INCREMENT, 
    id_pedido INT, 
    metodo ENUM('cartao','boleto','pix') NOT NULL, 
    status_pagamento ENUM('pendente','aprovado','rejeitado') NOT NULL,
    FOREIGN KEY (id_pedido) REFERENCES pedido(id_pedido) ON DELETE CASCADE
);

CREATE TABLE entrega (
    id_entrega INT PRIMARY KEY AUTO_INCREMENT,
    status_entrega ENUM('pendente','em_transporte','entregue') NOT NULL,
    id_pedido INT,
    data_envio DATETIME NOT NULL,
    data_entrega DATETIME NOT NULL,
    FOREIGN KEY (id_pedido) REFERENCES pedido(id_pedido) ON DELETE CASCADE
);

CREATE TABLE fornecedor(
    id_fornecedor INT PRIMARY KEY AUTO_INCREMENT,
    nome_fornecedor VARCHAR(100) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE endereco_fornecedor(
    id_endereco_fornecedor INT PRIMARY KEY AUTO_INCREMENT,
    id_fornecedor INT,
    rua VARCHAR(100) NOT NULL,
    cidade VARCHAR(100) NOT NULL,    
    estado VARCHAR(100) NOT NULL,
    bairro VARCHAR(100) NOT NULL,
    cep VARCHAR(10) NOT NULL,
    numero INT NOT NULL,
    FOREIGN KEY(id_fornecedor) REFERENCES fornecedor(id_fornecedor) ON DELETE CASCADE
);

CREATE TABLE contato_fornecedor(
    id_contatofornecedor INT PRIMARY KEY AUTO_INCREMENT,
    id_fornecedor INT, 
    telefone VARCHAR(20) NOT NULL,
    FOREIGN KEY(id_fornecedor) REFERENCES fornecedor(id_fornecedor) ON DELETE CASCADE
);

CREATE TABLE produto (
    id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome_produto VARCHAR(100) NOT NULL UNIQUE,
    descricao_produto TEXT NOT NULL,
    valor_unitario DECIMAL(10,2) NOT NULL,
    qtd_estoque_produto INT NOT NULL,
    id_fornecedor INT, 
    id_categoria INT, 
    FOREIGN KEY (id_fornecedor) REFERENCES fornecedor(id_fornecedor) ON DELETE CASCADE,
    FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria) ON DELETE CASCADE
);

CREATE TABLE produto_pedido(
    id_produto INT,
    id_pedido INT, 
    quantidade INT NOT NULL,
    PRIMARY KEY(id_produto, id_pedido),
    FOREIGN KEY(id_produto) REFERENCES produto(id_produto) ON DELETE CASCADE,
    FOREIGN KEY(id_pedido) REFERENCES pedido(id_pedido) ON DELETE CASCADE
);

CREATE TABLE avaliacoes(
    id_avaliacao INT PRIMARY KEY AUTO_INCREMENT,
    nota FLOAT NOT NULL,
    comentario TEXT NOT NULL,
    data_avaliacao DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    id_usuario INT,
    id_produto INT,
    FOREIGN KEY(id_usuario) REFERENCES usuario(id_usuario) ON DELETE CASCADE,
    FOREIGN KEY(id_produto) REFERENCES produto(id_produto) ON DELETE CASCADE
);