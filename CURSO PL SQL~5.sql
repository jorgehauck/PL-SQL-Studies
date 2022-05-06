DECLARE 
 v_ID Segmercado.ID%TYPE := 2; -- Atrbui para a vari�vel o mesmo tipo do campo de dado na tabela.
 v_Descricao Segmercado.descricao%TYPE := 'Atacadistas';
 
BEGIN
    UPDATE SEGMERCADO SET DESCRICAO = UPPER(v_DESCRICAO) WHERE ID = v_ID;
    v_ID := 1;
    v_DESCRICAO := 'Varejistas';
    UPDATE SEGMERCADO SET DESCRICAO = UPPER(v_DESCRICAO) WHERE ID = v_ID;
    
   COMMIT; -- Comando COMMIT confirma a transa��o dos comandos PL-SQL.
END;


SELECT * FROM SEGMERCADO;