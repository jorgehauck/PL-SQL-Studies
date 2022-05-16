select * from cliente;

DECLARE 
    CURSOR cur_CLIENTE IS SELECT ID FROM CLIENTE;
    v_SEGMERCADO_ID CLIENTE.SEGMERCADO_ID%type := 1;
BEGIN 
    FOR cli_rec IN cur_CLIENTE LOOP
    atualizar_cli_segmercado(p_SEGMERCADO_ID => v_SEGMERCADO_ID, p_ID => cli_rec.ID);
    END LOOP;
END;