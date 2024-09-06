-- Exibe as 5 primeiras propostas
SELECT * FROM proposta LIMIT 5;

-- Exibe 5 funcionário a partir do 6ª funcionário (pular as 5 primeiras)
SELECT * FROM funcionario LIMIT 5 OFFSET 5;

-- Exibe cliente onde o telefone não é nulo
SELECT * FROM TabelaClientes WHERE telefone1_cliente IS NOT NULL;

-- Exibe endereco dos clientes onde o endereço é nulo
SELECT * FROM TabelaClientes WHERE endereco_completocliente IS NULL;

-- Exibe os cliente com nome que começa com 'a'
SELECT * FROM TabelaClientes WHERE nome_cliente LIKE 'b%';

-- Exibe propostas com subcategoria que termina com '4'
SELECT * FROM proposta WHERE subcategoria LIKE '%4';

-- Exibe funcionários com nome que contém 's'
SELECT * FROM funcionario WHERE nome_funcionario LIKE '%S%';

-- Exibe propostas com subcategoria igual a 'Subcategoria_5'
SELECT * FROM proposta WHERE subcategoria LIKE 'Subcategoria_5';

-- Exibe propostas onde a categoria começa com 'Categoria_' e o valor é maior que 500
SELECT * FROM proposta WHERE categoria LIKE 'Categoria_%' AND valor > 500;

-- Exibe funcionários cujo nome contém 'Silva' e telefone é não nulo
SELECT * FROM funcionario WHERE nome_funcionario LIKE '%Silva%' AND telefone_funcionario IS NOT NULL;

-- Exibe propostas onde a categoria não começa com 'Categoria_9' e id_funcionario não é nulo
SELECT * FROM proposta WHERE categoria NOT LIKE 'Categoria_9%' AND id_funcionario IS NOT NULL;

SELECT * FROM TabelaClientes WHERE endereco_completocliente LIKE 'Rua%' AND telefone2_cliente IS NULL;

-- Exibe o maior valor entre todas as propostas
SELECT MAX(valor) AS maior_valor FROM proposta;

-- Exibe o menor valor entre todas as propostas
SELECT MIN(valor) AS menor_valor FROM proposta;

-- Exibe a soma total dos valores de todas as propostas
SELECT SUM(valor) AS total_valor FROM proposta;

-- Exibe a soma dos valores agrupados por categoria
SELECT categoria, SUM(valor) AS total_valor FROM proposta GROUP BY categoria;

-- Exibe a média dos valores das propostas
SELECT AVG(valor) AS media_valor FROM proposta;

-- Exibe a contagem total de propostas
SELECT COUNT(*) AS total_propostas FROM proposta;

-- Exibe as categorias que têm um valor total maior que 1000
SELECT categoria, SUM(valor) AS total_valor FROM proposta GROUP BY categoria HAVING SUM(valor) > 1000;


