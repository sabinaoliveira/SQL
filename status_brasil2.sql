-- Editor SQL > Novo Script SQL

CREATE TABLE Municipio_Status (
status_ID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
populacao_residente INTEGER NOT NULL,
IDHM_rank INTEGER NOT NULL,
educacao INTEGER NOT NULL,
renda INTEGER NOT NULL,
municipio_ID INTEGER NOT NULL,
CONSTRAINT fk_municipio FOREIGN KEY (municipio_ID) REFERENCES Municipios_Brasileiros(municipio_ID)
)