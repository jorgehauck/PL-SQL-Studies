DECLARE 
 v_ID Segmercado.ID%TYPE := 3; -- Atrbui para a variável o mesmo tipo do campo de dado na tabela.
 v_Descricao Segmercado.descricao%TYPE := 'Esportistas';
 
BEGIN
  INSERT INTO segmercado (id, descricao) VALUES (v_id, upper(v_Descricao));
  COMMIT; -- Comando COMMIT confirma a transação dos comandos PL-SQL.
END;

--select * from segmercado;


