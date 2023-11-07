-- # Creation of the database #
CREATE DATABASE  IF NOT EXISTS recebimentos;

-- # Creation of the tables #
USE recebimentos; -- Used to specify which database will use

CREATE TABLE IF NOT EXISTS Estado(
ID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
nome VARCHAR(50) NOT NULL DEFAULT '',
UF CHAR(2) NOT NULL
);

CREATE TABLE IF NOT EXISTS Municipio(
ID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
Estado_ID INT NOT NULL,
nome VARCHAR(80) NOT NULL DEFAULT '',
CodIBGE INT NOT NULL
);

CREATE TABLE IF NOT EXISTS Cliente(
ID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
nome VARCHAR(80) NOT NULL DEFAULT '',
CPF CHAR(11) NOT NULL,
Celular CHAR(11),
EndLogradouro VARCHAR(100) NOT NULL DEFAULT '',
EndNumero VARCHAR(10) NOT NULL DEFAULT '',
EndMunicipio INT NOT NULL,
EndCEP CHAR(8),
Municipio_ID INT NOT NULL
);

CREATE TABLE IF NOT EXISTS ContaReceber(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Cliente_ID INT NOT NULL,
    FaturaVendaID INT,
    DataConta DATE NOT NULL,
    DataVencimento DATE NOT NULL,
    Valor DECIMAL(18,2) NOT NULL,
	Situacao ENUM('1','2','3') NOT NULL
    );
    
-- # Creation of the constraints #    
ALTER TABLE Municipio 
ADD CONSTRAINT fk_Municipio_Estado1_idx
FOREIGN KEY (Estado_ID) REFERENCES Estado(ID);

ALTER TABLE Cliente 
ADD CONSTRAINT fk_Cliente_Municipio1_idx
FOREIGN KEY (Municipio_ID) REFERENCES Estado(ID);

ALTER TABLE ContaReceber 
ADD CONSTRAINT fk_ContaReceber_Cliente_idx
FOREIGN KEY (Cliente_ID) REFERENCES Estado(ID);
