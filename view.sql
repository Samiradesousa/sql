CREATE VIEW FuncionarioProposta AS -- Criando VIEW 
SELECT
    f.funcionarioId,
    f.nomeFuncionario,
    f.loginFuncionario,
    f.cpfFuncionario,
    f.telefoneFuncionario,
    p.propostaId,
    p.categoria,
    p.subcategoria,
    p.valor,
    p.dataInicio,
    p.dataConclusao
FROM funcionario f
LEFT JOIN proposta p ON f.funcionarioId = p.funcionarioId;

SELECT * FROM FuncionarioProposta; -- Consultando VIEW 
 
CREATE VIEW RevisaoProposta AS -- Criando VIEW 
SELECT
    r.revisaoId,
    r.versao,
    p.propostaId,
    p.categoria, 
    p.subcategoria,
    p.valor,
    p.dataInicio,
    p.dataConclusao
FROM revisao r
JOIN proposta p ON r.propostaId = p.propostaId;

SELECT * FROM RevisaoProposta; -- Consultando VIEW 

CREATE VIEW ClienteComPropostas AS -- Criando VIEW 
SELECT
    c.clienteId,
    c.nomeCliente,
    c.cpfCliente,
    c.bairro,
    c.cidade,
    c.telefone1Cliente,
    p.propostaId,
    p.valor,
    p.dataInicio,
    p.dataConclusao
FROM cliente c
LEFT JOIN proposta p ON c.clienteId = p.clienteId;

SELECT * FROM ClienteComPropostas; -- Consultando VIEW

CREATE VIEW funcionarioComCliente AS -- Criando VIEW
SELECT 
    c.clienteId,
    c.nomeCliente,
    c.cpfCliente,
    c.cidade,
    f.funcionarioId,
    f.nomeFuncionario,
    f.cpfFuncionario,
    f.telefoneFuncionario
FROM cliente c 
LEFT JOIN funcionario f ON c.cpfCliente = f.cpfFuncionario;

SELECT * FROM funcionarioComCliente; -- Consultando VIEW