CREATE TABLE Gerencia_Regiao (
gerencia_ID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
Regiao TEXT(10) NOT NULL,
pessoas_brancas INTEGER NOT NULL,
pessoas_pretas_pardas INTEGER NOT NULL,
gerencia_branca INTEGER NOT NULL,
gerencia_preta_parda INTEGER NOT NULL,
CONSTRAINT fk_regiao FOREIGN KEY (Regiao) REFERENCES Municipios_Brasileiros (Regiao)
);