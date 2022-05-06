
SET SERVEROUT ON; -- Declaração de Saída de dados (Por Padrão o mesmo vem como default OFF).

DECLARE -- Comando para declarações de variáveis, recomendado colocar o "v_" seguido do nome.
    v_ID NUMBER(5) := 1; 

BEGIN -- Início do programa PL-SQL com a palavra chave BEGIN
    v_id := 2;   
    DBMS_OUTPUT.PUT_LINE(v_ID);
    

END; -- Fim do programa PL-SQL com a palavra chave END.

