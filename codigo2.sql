
CREATE TABLE Personagem(
  IdP			INT 	PRIMARY KEY,
  Nome          varchar(70),
  Classe        varchar(50),
  Id_Status     INT,
  Rank          varchar(50),
  FOREIGN KEY (Id_Status) REFERENCES Status(Id_Status)
);

CREATE TABLE Status(
  Id_Status			INT 	PRIMARY KEY,
  Hp   VARCHAR(31),
  Mp   VARCHAR(31),
  Fadiga   VARCHAR(31),
  Forca INT,
  Agilidade INT,
  Percepcao INT,
  Vitalidade INT,
  Intelecto INT,
  Pontos_Disponiveis INT
);

INSERT INTO Personagem VALUES (01,"Sung Jinwoo", "Necromante", 01, "S");

INSERT INTO Status VALUES (01,"100/100", "10/10", "50/50", 95, 87, 39, 16, 57, 7);
