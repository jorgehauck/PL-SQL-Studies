-- Cria??o de uma Fun??o.


CREATE OR REPLACE FUNCTION obter_descricao_segmercado
(p_ID IN SEGMERCADO.ID%TYPE)
RETURN segmercado.descricao%TYPE

IS 
    v_DESCRICAO SEGMERCADO.DESCRICAO%TYPE;
BEGIN
    SELECT DESCRICAO INTO v_DESCRICAO FROM SEGMERCADO WHERE id = p_ID;
    RETURN v_DESCRICAO;
END;








