
EXECUTE atualizar_cli_segmercado(1, 3);


DECLARE
    v_SEGMERCADO_ID CLIENTE.SEGMERCADO_ID%TYPE := 1;
    v_I number(3):= 1;
BEGIN
    LOOP
    atualizar_cli_segmercado(v_I, v_SEGMERCADO_ID);
    v_I := v_I + 1;
    EXIT WHEN v_I > 6;
    END LOOP;
END;

select * from cliente;