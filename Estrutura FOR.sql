
DECLARE 
     v_SEGMERCADO_ID CLIENTE.SEGMERCADO_ID%TYPE := 3;
BEGIN
    FOR v_ID IN 1..6 LOOP
        atualizar_cli_segmercado(v_ID, v_SEGMERCADO_ID);
    END LOOP;
END;

