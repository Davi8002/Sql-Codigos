drop table Customers;
drop table Orders;
drop table Shippings;

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

INSERT INTO Status VALUES (01,"100/100", "10/10", "50/50", 95, 87, 39, 16, 57, 7);

INSERT INTO Personagem VALUES (01,"Sung Jinwoo", "Necromante, Mago e Assassino", 01, "S");

INSERT INTO Status VALUES (02,"5000/5000", "250/250", "150/150", 230, 193, 89, 60, 156, 0);

INSERT INTO Personagem VALUES (02,"Antares", "Rei dos Dragões", 02, "Monarca da Destruição");

INSERT INTO Status VALUES (03,"10000/10000", "500/500", "300/300", 0, 0, 0, 0, 0, 0);

INSERT INTO Personagem VALUES (03,"Ser Absoluto", "Desconhecida", 03, "Desconhecido");

