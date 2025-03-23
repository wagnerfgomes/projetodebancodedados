-- Active: 1742760194028@@localhost@3306@ecommerce
-- SQLBook: Code
INSERT INTO usuario (nome_usuario, email, senha_criptografada, tipo_usuario) VALUES
('Carlos Pereira', 'carlos@email.com', 'senha789', 'cliente'),
('Ana Oliveira', 'ana@email.com', 'senha101', 'cliente'),
('Pedro Lima', 'pedro@email.com', 'senha202', 'cliente'),
('Fernanda Costa', 'fernanda@email.com', 'senha303', 'cliente'),
('Lucas Almeida', 'lucas@email.com', 'senha404', 'cliente'),
('Juliana Rocha', 'juliana@email.com', 'senha505', 'cliente'),
('Rafael Souza', 'rafael@email.com', 'senha606', 'cliente'),
('Camila Martins', 'camila@email.com', 'senha707', 'cliente'),
('Gabriel Santos', 'gabriel@email.com', 'senha808', 'cliente'),
('Patricia Mendes', 'patricia@email.com', 'senha909', 'cliente');

INSERT INTO contato_usuario (id_usuario, contato) VALUES
(1, '11987654321'),
(2, '11912345678'),
(3, '11923456789'),
(4, '11934567890'),
(5, '11945678901'),
(6, '11956789012'),
(7, '11967890123'),
(8, '11978901234'),
(9, '11989012345'),
(10, '11990123456');

INSERT INTO endereco_usuario (id_usuario, rua, cidade, estado, bairro, cep, numero) VALUES
(1, 'Rua A', 'Rio de Janeiro', 'RJ', 'Centro', '20000-000', 10),
(2, 'Rua B', 'Belo Horizonte', 'MG', 'Savassi', '30000-000', 20),
(3, 'Rua C', 'Curitiba', 'PR', 'Batel', '40000-000', 30),
(4, 'Rua D', 'Porto Alegre', 'RS', 'Moinhos', '50000-000', 40),
(5, 'Rua E', 'Florianópolis', 'SC', 'Centro', '60000-000', 50),
(6, 'Rua F', 'Salvador', 'BA', 'Barra', '70000-000', 60),
(7, 'Rua G', 'Fortaleza', 'CE', 'Meireles', '80000-000', 70),
(8, 'Rua H', 'Recife', 'PE', 'Boa Viagem', '90000-000', 80),
(9, 'Rua I', 'Manaus', 'AM', 'Centro', '10000-000', 90),
(10, 'Rua J', 'Brasília', 'DF', 'Asa Sul', '11000-000', 100);

INSERT INTO categoria (nome_categoria, descricao_categoria) VALUES
('Móveis', 'Móveis para casa e escritório'),
('Brinquedos', 'Brinquedos para crianças de todas as idades'),
('Esportes', 'Equipamentos e acessórios esportivos'),
('Beleza', 'Produtos de beleza e cuidados pessoais'),
('Automotivo', 'Acessórios e peças para veículos'),
('Alimentos', 'Produtos alimentícios e bebidas'),
('Informática', 'Acessórios e periféricos de informática'),
('Ferramentas', 'Ferramentas para construção e reparos'),
('Jardinagem', 'Produtos para jardinagem e paisagismo'),
('Pet Shop', 'Produtos para animais de estimação');

INSERT INTO pedido (id_usuario, status_pedidos ) VALUES
(1, 'pendente'),
(2, 'processando'),
(2, 'enviado'),
(3, 'cancelado'),
(4, 'pendente'),
(6, 'processando'),
(7, 'enviado'),
(8, 'cancelado'),
(10, 'pendente'),
(10, 'processando');

INSERT INTO pagamento (id_pedido, metodo, status_pagamento) VALUES
(1, 'boleto', 'pendente'),
(2, 'cartao', 'aprovado'),
(3, 'pix', 'pendente'),
(4, 'cartao', 'rejeitado'),
(5, 'boleto', 'pendente'),
(6, 'pix', 'pendente'),
(7, 'cartao', 'aprovado'),
(8, 'boleto', 'pendente'),
(9, 'pix', 'rejeitado'),
(10, 'cartao', 'pendente');

INSERT INTO entrega (status_entrega, id_pedido, data_envio, data_entrega) VALUES
('em_transporte', 1, NOW(), NOW() + INTERVAL 5 DAY),
('pendente', 2, NOW(), NOW() + INTERVAL 3 DAY),
('entregue', 3, NOW(), NOW() + INTERVAL 7 DAY),
('pendente', 4, NOW(), NOW() + INTERVAL 7 DAY),
('em_transporte', 5, NOW(), NOW() + INTERVAL 5 DAY),
('pendente', 6, NOW(), NOW() + INTERVAL 3 DAY),
('entregue', 7, NOW(), NOW() + INTERVAL 7 DAY),
('pendente', 8, NOW(), NOW() + INTERVAL 3 DAY),
('em_transporte', 9, NOW(), NOW() + INTERVAL 5 DAY),
('pendente', 10, NOW(), NOW() + INTERVAL 3 DAY);

INSERT INTO fornecedor (id_fornecedor, nome_fornecedor, email) VALUES
(1, 'Móveis & Cia', 'contato@moveisecia.com'),
(2, 'Brinquedos Alegria', 'vendas@brinquedosalegria.com'),
(3, 'Esporte Total', 'contato@esportetotal.com'),
(4, 'Beleza Sempre', 'vendas@belezasempre.com'),
(5, 'Auto Peças Brasil', 'contato@autopecasbrasil.com'),
(6, 'Alimentos Gourmet', 'vendas@alimentosgourmet.com'),
(7, 'Tech World', 'suporte@techworld.com'),
(8, 'Ferramentas Pro', 'contato@ferramentaspro.com'),
(9, 'Jardim Verde', 'vendas@jardimverde.com'),
(10, 'Pet Amigo', 'contato@petamigo.com');

INSERT INTO endereco_fornecedor (id_fornecedor, rua, cidade, estado, bairro, cep, numero) VALUES
(1, 'Rua Nova', 'Curitiba', 'PR', 'Centro', '80000-000', 300),
(2, 'Av. Central', 'Belo Horizonte', 'MG', 'Savassi', '30000-000', 400),
(3, 'Rua das Palmeiras', 'Porto Alegre', 'RS', 'Moinhos', '50000-000', 500),
(4, 'Av. Beira Mar', 'Florianópolis', 'SC', 'Centro', '60000-000', 600),
(5, 'Rua do Comércio', 'Salvador', 'BA', 'Barra', '70000-000', 700),
(6, 'Av. Principal', 'Fortaleza', 'CE', 'Meireles', '80000-000', 800),
(7, 'Rua das Flores', 'Recife', 'PE', 'Boa Viagem', '90000-000', 900),
(8, 'Av. das Nações', 'Brasília', 'DF', 'Asa Sul', '10000-000', 1000),
(9, 'Rua do Sol', 'Manaus', 'AM', 'Centro', '1100-000', 1100),
(10, 'Av. Paulista', 'São Paulo', 'SP', 'Bela Vista', '01310-000', 1200);

INSERT INTO contato_fornecedor ( id_fornecedor, telefone) VALUES
(1, '11987654321'),
(2, '11912345678'),
(3, '11923456789'),
(4, '11934567890'),
(5, '11945678901'),
(6, '11956789012'),
(7, '11967890123'),
(8, '11978901234'),
(9, '11989012345'),
(10, '11990123456');

INSERT INTO produto (nome_produto, descricao_produto, valor_unitario, qtd_estoque_produto, id_fornecedor, id_categoria) VALUES
('Mesa de Jantar', 'Mesa de madeira para 6 pessoas', 1200.00, 15, 1, 1),
('Carrinho de Controle Remoto', 'Brinquedo para crianças', 150.00, 50, 2, 2),
('Bola de Futebol', 'Bola oficial para jogos', 100.00, 100, 3, 3),
('Shampoo Premium', 'Shampoo para cabelos secos', 30.00, 200, 4, 4),
('Pneu Aro 16', 'Pneu para carros de passeio', 400.00, 20, 5, 5),
('Café Gourmet', 'Café em grãos de alta qualidade', 50.00, 100, 6, 6),
('Mouse Gamer', 'Mouse com iluminação RGB', 150.00, 50, 7, 7),
('Furadeira Elétrica', 'Furadeira para uso doméstico', 300.00, 30, 8, 8),
('Adubo Orgânico', 'Adubo para plantas', 20.00, 100, 9, 9),
('Ração para Cães', 'Ração premium para cães adultos', 100.00, 50, 10, 10);

INSERT INTO produto_pedido (id_produto, id_pedido, quantidade) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(5, 4, 30),
(5, 5, 25),
(6, 6, 29),
(7, 7, 1),
(8, 8, 1),
(9, 9, 28),
(10, 10, 1);

INSERT INTO avaliacoes (nota, comentario, id_usuario, id_produto) VALUES
(4.0, 'Produto bom, mas poderia ser melhor.', 3, 1),
(5.0, 'Excelente qualidade!', 4, 2),
(3.5, 'Atendeu às expectativas.', 5, 3),
(4.5, 'Muito bom, recomendo.', 6, 4),
(5.0, 'Ótimo custo-benefício.', 7, 5),
(4.0, 'Produto de qualidade.', 8, 6),
(3.0, 'Poderia ser mais barato.', 9, 7),
(4.5, 'Entrega rápida e produto bom.', 10, 8),
(5.0, 'Superou minhas expectativas.', 1, 9),
(4.0, 'Gostei bastante.', 2, 10);