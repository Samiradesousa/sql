-- Consulta 1: Seleciona clientes cujos IDs estão na lista de funcionários das propostas
SELECT * 
FROM cliente
WHERE clienteId IN (
    SELECT p.funcionarioId
    FROM proposta p
    JOIN funcionarioBons f ON p.funcionarioId = f.funcionarioId
);

-- Consulta 2: Lista funcionários e suas propostas, incluindo funcionários sem propostas
SELECT f.nomeFuncionario, p.categoria, p.valor
FROM funcionario f
LEFT JOIN proposta p ON f.funcionarioId = p.funcionarioId;

-- Consulta 3: Combina resultados de funcionários e propostas, removendo duplicatas
SELECT f.nomeFuncionario, p.categoria, p.valor
FROM funcionario f
LEFT JOIN proposta p ON f.funcionarioId = p.funcionarioId
UNION
SELECT f.nomeFuncionario, p.categoria, p.valor
FROM proposta p
LEFT JOIN funcionario f ON p.funcionarioId = f.funcionarioId;

-- Consulta 4: Similar à Consulta 3, mas inverte a ordem dos joins
SELECT f.nomeFuncionario, p.categoria, p.valor
FROM funcionario f
LEFT JOIN proposta p ON f.funcionarioId = p.funcionarioId
UNION
SELECT f.nomeFuncionario, p.categoria, p.valor
FROM proposta p
LEFT JOIN funcionario f ON p.funcionarioId = f.funcionarioId;
