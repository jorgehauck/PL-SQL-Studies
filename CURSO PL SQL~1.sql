
SET SERVEROUT ON; -- Declara��o de Sa�da de dados (Por Padr�o o mesmo vem como default OFF).

DECLARE -- Comando para declara��es de vari�veis, recomendado colocar o "v_" seguido do nome.
    v_ID NUMBER(5) := 1; 

BEGIN -- In�cio do programa PL-SQL com a palavra chave BEGIN
    v_id := 2;   
    DBMS_OUTPUT.PUT_LINE(v_ID);
    

END; -- Fim do programa PL-SQL com a palavra chave END.

