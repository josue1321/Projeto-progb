1- Tabelas definidas inicialmente
- Users
- Roles
- Products
- Sales
- SalesItems

2- Sim, 3
- 001_create_users_and_roles.sql: Cria as tabelas de usuários e seus cargos dentro do sistema 
- 002_create_products.sql: Cria a tabela de produtos com campos como quantidade, preço, nome, etc 
- 003_create_sales_and_salesItems.sql: Cria as tabelas de vendas com campos de valor, chave estrangeira para usuario que fez a venda, etc e itens da venda com chave estrangeira para a venda e para o produto que foi vendido

3- backend/seed.sql


4-
- POST /api/auth/login
- POST /api/auth/signup
- POST /api/produtos
- GET /api/produtos
- POST /api/vendas
- GET /api/vendas


A escolha desses endpoints visa permitir que o sistema exerça suas funções principais onde o usuario pode fazer login, se cadastrar, garantindo segurança e identifica o funcionário responsável pela venda no caixa, a consulta de produtos permite buscar os itens e verificar seus preços/estoque em tempo real além de permitir adicionar os itens que estão em estoque, e a criação da venda consolida a transação de pagamento e efetua a baixa automática de estoque

5- Sim, ASP.NET Core
