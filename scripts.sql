SELECT nomeFuncionario AS nome, 'Funcionario' AS tipo
FROM funcionario

UNION

SELECT nomeCliente AS nome, 'Cliente' AS tipo
FROM cliente;
