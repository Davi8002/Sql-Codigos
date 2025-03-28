drop table Customers;
drop table Orders;
drop table Shippings;


CREATE TABLE Paciente(
  IdP			INT 	PRIMARY KEY,
  Nome          varchar(150),
  Data_Nasci    varchar(20),
  Email         varchar(70),
  Telefone      INT,
  Cpf           varchar(70)
);

INSERT INTO Paciente VALUES (01,"Nome", "01/10/2008", "email@gmail.com",5581989639664, "12312312312");

CREATE TABLE Medico(
  IdM    		INT 	PRIMARY KEY,
  Nome          varchar(150),
  Data_Nasci    varchar(20),
  Email         varchar(70),
  Telefone      INT,
  Formacao      varchar(70),
  Salario       int,
  Horario       varchar(50),
  Cpf           varchar(30));

INSERT INTO Medico VALUES (01,"Nome", "01/10/2008", "email@gmail.com",5581989639664, "formacao", "10", "12:00 as 20:00)", "12312312312");


CREATE TABLE Enfermeiro(
  IdE   		INT 	PRIMARY KEY,
  Nome          varchar(150),
  Data_Nasci    varchar(20),
  Email         varchar(70),
  Telefone      INT,
  Formacao      varchar(70),
  Salario       int,
  Horario       varchar(50),
  Cpf           varchar(30)
);

INSERT INTO Enfermeiro VALUES (01,"Nome", "01/10/2008", "email@gmail.com",5581989639664, "formacao", "10", "12:00 as 20:00)", "12312312312");

CREATE TABLE Receita(
  IdR   		INT 	PRIMARY KEY,
  Precos        INT,
  Data_Emissao  varchar(20),
  Medicamentos        varchar(70)
);

INSERT INTO Receita VALUES (01, 200, "27/03/2025", "Heh");



CREATE TABLE Atende(
  IdA    		INT 	PRIMARY KEY,
  IdP           INT,
  IdM           INT,
  Hora          varchar(70),
  Data          varchar(70),
  Area          varchar(70),
  FOREIGN KEY (IdP) REFERENCES Paciente(IdP),
  FOREIGN KEY (IdM) REFERENCES Medico(IdM)
); 
