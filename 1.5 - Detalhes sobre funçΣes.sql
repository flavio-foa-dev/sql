CREATE TABLE a ( nome VARCHAR(255) NOT NULL);

CREATE FUNCTION cria_a( nome VARCHAR) RETURNS VARCHAR AS'
    INSERT INTO a(nome) VALUES(cria_a.nome)
'LANGUAGE SQL;

CREATE FUNCTION cria_a( nome VARCHAR) RETURNS VARCHAR AS'
    INSERT INTO a(nome) VALUES(cria_a.nome)

    SELECT nome;
'LANGUAGE SQL;


CREATE OR REPLACE FUNCTION cria_a( nome VARCHAR) RETURNS VARCHAR AS'
    INSERT INTO a(nome) VALUES(cria_a.nome)

    SELECT nome;
'LANGUAGE SQL;

SELECT cria_a('Vinicius Dias')


CREATE OR REPLACE FUNCTION cria_a( nome VARCHAR) RETURNS void AS'
    INSERT INTO a(nome) VALUES(cria_a.nome)
'LANGUAGE SQL;

DROP FUNCTION cria_a;
CREATE OR REPLACE FUNCTION cria_a( nome VARCHAR) RETURNS void AS'
    INSERT INTO a(nome) VALUES(cria_a.nome)
'LANGUAGE SQL;

SELECT cria_a('Vinicius Dias')


DROP FUNCTION cria_a;
CREATE OR REPLACE FUNCTION cria_a( nome VARCHAR) RETURNS void AS $$
    INSERT INTO a(nome) VALUES('Patricia')
$$ LANGUAGE SQL;

SELECT cria_a('Vinicius Dias')
