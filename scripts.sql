-- Combina nomes de funcionários das tabelas funcionario e funcionarioBons, removendo duplicatas.
SELECT nomeFuncionario FROM funcionario
UNION
SELECT nomeFuncionario FROM funcionarioBons;