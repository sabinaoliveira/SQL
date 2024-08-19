-- COMANDO PARA CRIAR A COLUNA PAÍS
ALTER TABLE Municipios_Brasileiros ADD COLUMN País;

-- COMANDO PARA ALTERAR A COLUNA E ADD O VALOR "BRASIL"
UPDATE Municipios_Brasileiros SET País="Brasil";

-- COMANDO PARA DELETAR A COLUNA PAÍS
ALTER TABLE Municipios_Brasileiros DROP COLUMN País;

-- SELECIONAR DA TABELA A CIDADE ITAQUAQUECETUBA
SELECT * FROM Municipios_Brasileiros WHERE Cidade="Itaquaquecetuba";

-- SELCIONAR AS CIDADES COM POPULAÇÃO > 50000
SELECT * FROM Municipio_Status WHERE populacao_residente>50000;

--
SELECT Municipios_Brasileiros.Cidade, Municipio_Status.populacao_residente FROM Municipios_Brasileiros
INNER JOIN Municipio_Status ON Municipios_Brasileiros.municipio_ID = Municipio_Status.municipio_ID ;

-- COLOCAR EM ORDEM DECRESCENTE OS ESTADOS COM MAIS CIDADES
SELECT Estado, COUNT(Cidade) FROM Municipios_Brasileiros GROUP BY Estado ORDER BY 2 DESC;

-- SELECT SUM(pessoas_brancas), SUM(pessoas_pretas_pardas) FROM Gerencia_Regiao ;

-- SELECT Regiao, MAX(pessoas_pretas_pardas) FROM Gerencia_Regiao ;
-- SELECT Regiao, MIN(pessoas_pretas_pardas) FROM Gerencia_Regiao ;

SELECT Regiao FROM Gerencia_Regiao WHERE gerencia_branca>gerencia_preta_parda ;
