DECLARE 
 v_ID NUMBER(5) := 1;
 v_Descricao VARCHAR2(100) := 'Varejo';
 
BEGIN
  INSERT INTO segmercado (id, descricao) VALUES (v_id, v_Descricao);
  COMMIT; -- Comando COMMIT confirma a transação dos comandos PL-SQL.
END;

