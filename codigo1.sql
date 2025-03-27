
CREATE TABLE Paciente(
  IdP			INT 	PRIMARY KEY,
  Nome          varchar(150),
  Data_Nasci    varchar(20),
  Email         varchar(70),
  Telefone      INT,
  Cpf           varchar(70)
);


CREATE TABLE Medico(
  IdM    		INT 	PRIMARY KEY,
  Nome          varchar(150),
  Data_Nasci    varchar(20),
  Email         varchar(70),
  Telefone      INT,
  Formacao      varchar(70),
  Salario       int,
  Horario       varchar(50)
);


CREATE TABLE Enfermeiro(
  IdE   		INT 	PRIMARY KEY,
  Nome          varchar(150),
  Data_Nasci    varchar(20),
  Email         varchar(70),
  Telefone      INT,
  Formacao      varchar(70),
  Salario       int,
  Horario       varchar(50)
);

CREATE TABLE Receita(
  IdR   		INT 	PRIMARY KEY,
  Precos        INT,
  Data_Emissao  varchar(20),
  Medicamentos        varchar(70)
);
