

CREATE OR REPLACE PROCEDURE incluir_cliente
(p_ID IN CLIENTE.ID%TYPE, p_RAZAO_SOCIAL IN cliente.razao_social%TYPE,
p_CNPJ IN cliente.cnpj%TYPE, p_SEGMERCADO_ID IN cliente.segmercado_id%TYPE,
p_FATURAMENTO_PREVISTO IN cliente.faturamento_previsto%TYPE)

IS

BEGIN
    INSERT INTO CLIENTE (ID, RAZAO_SOCIAL, CNPJ, SEGMERCADO_ID, DATA_INCLUSAO, FATURAMENTO_PREVISTO, CATEGORIA)
    VALUES(p_ID, p_RAZAO_SOCIAL, p_CNPJ, p_SEGMERCADO_ID, SYSDATE, p_FATURAMENTO_PREVISTO, '00000');
    COMMIT;
END;

EXECUTE incluir_cliente(2, 'SUPERMERCADO IJK', '08812409000114', 1, 90000);

select * from cliente;

