
--SET SERVEROUTPUT ON;

DECLARE 
    CURSOR cur_CLIENTE IS SELECT ID, RAZAO_SOCIAL FROM CLIENTE; -- Declaração do cursor em memória
    v_ID CLIENTE.ID%type;
    v_RAZAO_SOCIAL CLIENTE.RAZAO_SOCIAL%type;
BEGIN 
    OPEN cur_CLIENTE; -- Abre o cursor
    LOOP 
        FETCH cur_CLIENTE INTO v_ID, v_RAZAO_SOCIAL; -- Ao não procurar mais linhas de registros;
    EXIT WHEN cur_CLIENTE%NOTFOUND;
        dbms_output.put_line('ID = ' || v_ID);
        dbms_output.put_line('RAZÃO SOCIAL' || v_RAZAO_SOCIAL);
    END LOOP;
    CLOSE cur_CLIENTE;
END;