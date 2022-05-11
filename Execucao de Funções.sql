
VARIABLE g_DESCRICAO VARCHAR2(100)

EXECUTE :g_DESCRICAO:=obter_descricao_segmercado(3);

PRINT g_DESCRICAO;


SET SERVEROUTPUT ON
DECLARE
    v_DESCRICAO SEGMERCADO.descricao%TYPE;
BEGIN
    v_DESCRICAO := obter_descricao_segmercado(2);
    dbms_output.put_line('A descrição do segmento de mercado é ' || v_descricao);
END;