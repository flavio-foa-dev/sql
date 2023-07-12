CREATE OR REPLACE FUNCTION tabuada (numero INTEGER) RETURNS SETOF INTEGER AS $$ 
    DECLARE
        multiplicador INTEGER DEFAULT 1;
    BEGIN
    -- multiplicador que começa com 1 e vai até <10
    -- numero * multiplicador
    -- multiplicador := multiplicador +1
    
    LOOP
        RETURN NEXT numero * multiplicador;

        multiplicador := multiplicador + 1;

        EXIT WHEN multiplicador = 10;
    END LOOP;
    END;
$$ LANGUAGE plpgsql;


CREATE OR REPLACE FUNCTION tabuada (numero INTEGER) RETURNS SETOF INTEGER AS $$ 
    DECLARE
        multiplicador INTEGER DEFAULT 1;
    BEGIN  
    LOOP
        RETURN NEXT numero * multiplicador;
        multiplicador := multiplicador + 1;
        EXIT WHEN multiplicador = 10;
    END LOOP;
    END;
$$ LANGUAGE plpgsql;


CREATE OR REPLACE FUNCTION tabuada (numero INTEGER) RETURNS SETOF VARCHAR AS $$ 
    DECLARE
        multiplicador INTEGER DEFAULT 1;
    BEGIN  
    LOOP
        -- 9 x 1 = 9
        RETURN NEXT numero || ' x ' || multiplicador || ' = ' || numero * multiplicador;
        multiplicador := multiplicador + 1;
        EXIT WHEN multiplicador = 10;
    END LOOP;
    END;
$$ LANGUAGE plpgsql;


SELECT tabuada(9);