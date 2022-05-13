
 SET SERVEROUTPUT ON
 
DECLARE
    v_FATURAMENTO_PREVISTO cliente.faturamento_previsto%TYPE:= 65000;
    v_CATEGORIA cliente.categoria%TYPE;
BEGIN
    IF v_FATURAMENTO_PREVISTO < 10000 THEN
    v_CATEGORIA := 'PEQUENO';
    
    ELSIF v_FATURAMENTO_PREVISTO < 50000 THEN
          v_CATEGORIA := 'MÉDIO'; 
    ELSIF v_FATURAMENTO_PREVISTO < 100000 THEN
           v_CATEGORIA := 'MÉDIO GRANDE';
    ELSE   
    v_CATEGORIA := 'GRANDE'; 
    END IF;
    dbms_output.put_line('A Categoria é ' || v_CATEGORIA);
END;