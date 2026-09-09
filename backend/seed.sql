-- Limpar dados existentes (para poder rodar o seed repetidamente)
TRUNCATE roles, users, products, sales, sales_items RESTART IDENTITY CASCADE;

-- Funções
INSERT INTO roles (name) VALUES
('ADMIN'),
('GERENTE'),
('CAIXA');

-- Users
INSERT INTO users (username, email, password, role_id) VALUES
('admin', 'admin@empresa.com', '$2a$12$eImiTXuWVxfM37uY4JANjOL.8/10m.SgUf8N0a.', 1),
('marcos_gerente', 'marcos@empresa.com', '$2a$12$eImiTXuWVxfM37uY4JANjOL.8/10m.SgUf8N0a.', 2),
('ana_caixa', 'ana@empresa.com', '$2a$12$eImiTXuWVxfM37uY4JANjOL.8/10m.SgUf8N0a.', 3);

-- Produtos
INSERT INTO products (name, description, price, quantity) VALUES
('Arroz Tipo 1 5kg', 'Arroz branco agulhinha pacote 5kg', 28.90, 150),
('Feijão Carioca 1kg', 'Feijão carioca tipo 1 pacote 1kg', 8.50, 200),
('Leite Integral 1L', 'Leite UHT integral caixinha 1 litro', 5.49, 300),
('Café Torrado e Moído 500g', 'Café tradicional vácuo 500g', 18.90, 80),
('Detergente Líquido 500ml', 'Detergente neutro para louças', 2.79, 120),
('Óleo de Soja 900ml', 'Óleo de soja refinado', 6.89, 90),
('Sabão em Pó 1kg', 'Sabão em pó multiação lavagem profunda', 14.90, 60);

-- Vendas
INSERT INTO sales (user_id, total_price, payment_method, status) VALUES
(3, 56.78, 'PIX', 'CONCLUIDA'),
(3, 27.40, 'CARTAO_DEBITO', 'CONCLUIDA'),
(3, 16.27, 'DINHEIRO', 'PENDENTE');

-- Itens das Vendas
INSERT INTO sales_items (sale_id, product_id, quantity, product_price) VALUES
(1, 1, 1, 28.90),
(1, 2, 2, 8.50),
(1, 3, 2, 5.49),
(2, 4, 1, 18.90),
(2, 2, 1, 8.50),
(3, 6, 2, 6.89),
(3, 5, 1, 2.49);
