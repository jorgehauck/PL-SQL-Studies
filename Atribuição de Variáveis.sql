
SET SERVEROUTPUT ON 

DECLARE 
    v_id segmercado.id%TYPE := 2;
    v_DESCRICAO segmercado.descricao%TYPE;
BEGIN
    SELECT DESCRICAO INTO v_DESCRICAO FROM SEGMERCADO WHERE id = v_id;  -- Atribui para a variável o resultado da query com a palavra chave INTO.
    dbms_output.put_line(v_descricao);
    COMMIT;
END;