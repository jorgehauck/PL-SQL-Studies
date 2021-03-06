
SELECT * FROM CLIENTE;

EXECUTE INCLUIR_CLIENTE('11', 'MERCADO JJ', '86544', 1, 34000);

EXECUTE INCLUIR_CLIENTE('1', 'MERCADO SSS', '74523', 1, 90000);


create or replace PROCEDURE incluir_cliente
(p_ID IN CLIENTE.ID%TYPE, p_RAZAO_SOCIAL IN cliente.razao_social%TYPE,
p_CNPJ IN cliente.cnpj%TYPE, p_SEGMERCADO_ID IN cliente.segmercado_id%TYPE,
p_FATURAMENTO_PREVISTO IN cliente.faturamento_previsto%TYPE)

IS
    v_CATEGORIA CLIENTE.CATEGORIA%TYPE;
    v_CNPJ CLIENTE.CNPJ%TYPE := p_CNPJ;
BEGIN

    formata_cnpj(v_CNPJ);
    v_CATEGORIA := categoria_cliente(p_FATURAMENTO_PREVISTO);

    INSERT INTO CLIENTE (ID, RAZAO_SOCIAL, CNPJ, SEGMERCADO_ID, DATA_INCLUSAO, FATURAMENTO_PREVISTO, CATEGORIA)
    VALUES(p_ID, p_RAZAO_SOCIAL, v_CNPJ, p_SEGMERCADO_ID, SYSDATE, p_FATURAMENTO_PREVISTO, v_CATEGORIA);
    COMMIT;
    
    
EXCEPTION
  WHEN dup_val_on_index THEN
   dbms_output.put_line('CLIENTE J? CADASTRADO!!!');
END;