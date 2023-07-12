
INSERT INTO instrutor (nome, salario) VALUES ('Flavio Andrade', 200);
INSERT INTO instrutor (nome, salario) VALUES ('Nelson Pistash', 300);
INSERT INTO instrutor (nome, salario) VALUES ('Juliana', 400);
INSERT INTO instrutor (nome, salario) VALUES ('Priscila', 500);



CREATE FUNCTION instrutores_bem_pagos(valor_salario DECIMAL) RETURNS instrutor AS $$
    SELECT * FROM instrutor WHERE salario > valor_salario;
$$ LANGUAGE SQL;


SELECT * FROM instrutores_bem_pagos(300);

DROP FUNCTION instrutores_bem_pagos;
CREATE FUNCTION instrutores_bem_pagos(valor_salario DECIMAL) RETURNS SETOF instrutor AS $$
    SELECT * FROM instrutor WHERE salario > valor_salario;
$$ LANGUAGE SQL;

DROP FUNCTION instrutores_bem_pagos;
CREATE FUNCTION instrutores_bem_pagos(valor_salario DECIMAL) RETURNS TABLE (id INTEGER, nome VARCHAR, salario DECIMAL) AS $$
    SELECT * FROM instrutor WHERE salario > valor_salario;
$$ LANGUAGE SQL;

SELECT * FROM instrutores_bem_pagos(300);


DROP FUNCTION instrutores_bem_pagos;
CREATE FUNCTION instrutores_bem_pagos(valor_salario DECIMAL) RETURNS SETOF record AS $$
    SELECT * FROM instrutor WHERE salario > valor_salario;
$$ LANGUAGE SQL;

SELECT * FROM instrutores_bem_pagos(300);


DROP FUNCTION instrutores_bem_pagos;
CREATE FUNCTION instrutores_bem_pagos(valor_salario DECIMAL) RETURNS SETOF instrutor AS $$
    SELECT * FROM instrutor WHERE salario > valor_salario;
$$ LANGUAGE SQL;

SELECT * FROM instrutores_bem_pagos(300);