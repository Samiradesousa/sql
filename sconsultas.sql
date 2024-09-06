SELECT LENGTH(nome) AS comprimento_nome
FROM TabelaClientes;

SELECT CONCAT('Nome do cliente: ',nome, ' - Endereço do Cliente: ', endereco_completocliente) AS nome_endereco
FROM TabelaClientes;

SELECT UPPER(nome) AS nome_maiusculo, LOWER(endereco_completocliente) AS nome_minusculo
FROM TabelaClientes;

SELECT STRFTIME('%d/%m/%Y', data_de_inicio) AS data_formatada
FROM proposta;

SELECT STRFTIME('%j', data_de_inicio) as data_formatada_por_dias
from proposta;

SELECT JULIANDAY(data_de_conclusao) - JULIANDAY(CURRENT_DATE) as quantidade_dias
FROM proposta;

SELECT 
    ROUND(AVG(valor)) AS media_valor_arredondada,
    CEIL(AVG(valor)) AS media_valor_teto,
    FLOOR(AVG(valor)) AS media_valor_piso
FROM proposta;

SELECT CAST(AVG(VALOR) AS INTEGER) AS Media_inteira 
FROM proposta;

SELECT CASE
           WHEN valor >= 1000 THEN 'Propostas Boas'
           WHEN valor >= 500 THEN 'Propostas Média'
           ELSE 'Propostas baixas'
       END AS valores
FROM proposta;

ALTER TABLE TabelaClientes
RENAME COLUMN nome_cliente TO nome;


