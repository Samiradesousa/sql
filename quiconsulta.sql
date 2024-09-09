SELECT * FROM cliente WHERE cliente.clienteId IN ( SELECT DISTINCT p.funcionarioId
FROM proposta p INNER JOIN funcionarioBons f ON p.funcionarioId = f.funcionarioId);

SELECT f.nomeFuncionario, p.categoria, p.valor FROM funcionario f
LEFT JOIN proposta p ON p.funcionarioId = f.funcionarioId;

SELECT f.nomeFuncionario, c.nomeCliente FROM funcionario f 
LEFT JOIN cliente c ON c.clienteId = f.funcionarioId;

SELECT f.nomeFuncionario, p.propostaId, c.nomeCliente, p.dataInicio, p.dataConclusao  FROM funcionario f
LEFT JOIN cliente c, proposta p ON c.clienteId = f.funcionarioId = p.propostaId;

SELECT DISTINCT f.nomeFuncionario, p.categoria, p.valor FROM funcionario f
right JOIN proposta p ON f.funcionarioId = p.funcionarioId;

SELECT f.nomeFuncionario, p.categoria, p.valor FROM funcionario F 
LEFT JOIN proposta p on f.funcionarioId = p.funcionarioId;
