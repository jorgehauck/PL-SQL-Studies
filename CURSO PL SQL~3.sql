DECLARE 
 v_ID Segmercado.ID%TYPE := 2; -- Atrbui para a variável o mesmo tipo do campo de dado na tabela.
 v_Descricao Segmercado.descricao%TYPE := 'Atacado';
 
BEGIN
  INSERT INTO segmercado (id, descricao) VALUES (v_id, v_Descricao);
  COMMIT; -- Comando COMMIT confirma a transação dos comandos PL-SQL.
END;

