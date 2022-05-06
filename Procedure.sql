
-- criação de procedure.
CREATE PROCEDURE INCLUIR_SEGMERCADO 
(p_ID IN NUMBER, p_DESCRICAO IN VARCHAR2) -- Parâmetros
IS
BEGIN
 INSERT INTO SEGMERCADO (ID, DESCRICAO) VALUES(p_ID, UPPER(p_DESCRICAO));
 COMMIT;
END;

EXECUTE incluir_segmercado(3,'Farmaceuticos'); -- Chamada da procedure com a inclusão dos parâmetros.


-- Outra abordagem de chamar a Procedure com BEGIN.
BEGIN
    incluir_segmercado(4, 'Industrial');
END;

