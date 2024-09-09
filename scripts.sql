-- Combina nomes de funcionários das tabelas funcionario e funcionarioBons, removendo duplicatas.
SELECT nomeFuncionario FROM funcionario
UNION
SELECT nomeFuncionario FROM funcionarioBons;

-- Combina nomes de funcionários das tabelas funcionario e funcionarioBons, incluindo duplicatas.
SELECT nomeFuncionario FROM funcionario
UNION ALL
SELECT nomeFuncionario FROM funcionarioBons;

-- Seleciona propostas de um funcionário específico.
SELECT * FROM proposta
WHERE funcionarioId = (
    SELECT funcionarioId FROM funcionario
    WHERE nomeFuncionario = 'Nome do Funcionário'
);

-- Seleciona funcionários que têm propostas associadas.
SELECT * FROM funcionario
WHERE funcionarioId IN (
    SELECT DISTINCT funcionarioId FROM proposta
);

-- Seleciona clientes com funcionários classificados como bons.
SELECT * FROM cliente
WHERE clienteId IN (
    SELECT p.funcionarioId
    FROM proposta p
    JOIN funcionarioBons f ON p.funcionarioId = f.funcionarioId
);


-- Seleciona propostas com valor acima da média.
SELECT * FROM proposta
WHERE valor > (
    SELECT AVG(valor) FROM proposta
);


