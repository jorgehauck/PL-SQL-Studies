
EXECUTE INCLUIR_CLIENTE('13', 'HARLEY DAVIDSON', '67890', 10, 56000);


create or replace PROCEDURE incluir_cliente
(p_ID IN CLIENTE.ID%TYPE, p_RAZAO_SOCIAL IN cliente.razao_social%TYPE,
p_CNPJ IN cliente.cnpj%TYPE, p_SEGMERCADO_ID IN cliente.segmercado_id%TYPE,
p_FATURAMENTO_PREVISTO IN cliente.faturamento_previsto%TYPE)

IS
    v_CATEGORIA CLIENTE.CATEGORIA%TYPE;
    v_CNPJ CLIENTE.CNPJ%TYPE := p_CNPJ;
    e_null exception;
    pragma exception_init(e_null, -1400);
BEGIN
    formata_cnpj(v_CNPJ);
    v_CATEGORIA := categoria_cliente(p_FATURAMENTO_PREVISTO);
    INSERT INTO CLIENTE (ID, RAZAO_SOCIAL, CNPJ, SEGMERCADO_ID, DATA_INCLUSAO, FATURAMENTO_PREVISTO, CATEGORIA)
    VALUES(p_ID, p_RAZAO_SOCIAL, v_CNPJ, p_SEGMERCADO_ID, SYSDATE, p_FATURAMENTO_PREVISTO, v_CATEGORIA);
    COMMIT;

EXCEPTION
  WHEN dup_val_on_index THEN 
    raise_application_error(-20010, 'Cliente já cadastrado!!!');
   WHEN e_null THEN
    raise_application_error(-20015, 'A COLUNA id não pode receber valores nulos ou vazios!!!');
   WHEN others THEN -- Último WHEN.
    raise_application_error(-20020, 'Erro genérico' || sqlerrm());
END;