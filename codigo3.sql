drop table Customers;
drop table Orders;
drop table Shippings;

CREATE TABLE Turma (
    Id_Turma INT PRIMARY KEY,
    Ano_Letivo VARCHAR(4),
    Quantidade_Alunos INT,
    Codigo VARCHAR(10),
    Turno VARCHAR(20),
    Sala VARCHAR(5)
);

CREATE TABLE Responsavel (
    Id_Responsavel INT PRIMARY KEY,
    Nome VARCHAR(150),
    Email VARCHAR(50),
    Senha VARCHAR(144),
    Data_Nascimento DATE,
    Telefone INT,
    Cpf INT
);

CREATE TABLE Professor (
    Id_Professor INT PRIMARY KEY,
    Nome VARCHAR(150),
    Email VARCHAR(50),
    Senha VARCHAR(144),
    Data_Nascimento DATE,
    Telefone INT,
    Cpf INT
);

CREATE TABLE Aluno (
    Id_Aluno INT PRIMARY KEY,
    Email VARCHAR(50),
    Nome VARCHAR(150),
    Senha VARCHAR(144),
    Data_Nascimento DATE,
    Id_Turma INT,
    Id_Responsavel INT,
    FOREIGN KEY (Id_Turma) REFERENCES Turma(Id_Turma),
    FOREIGN KEY (Id_Responsavel) REFERENCES Responsavel(Id_Responsavel)
);

CREATE TABLE Disciplina (
    Id_Disciplina INT PRIMARY KEY,
    Id_Professor INT,
    Nome VARCHAR(30),
    FOREIGN KEY (Id_Professor) REFERENCES Professor(Id_Professor)
);

CREATE TABLE Atividade (
    Id_Atividade INT PRIMARY KEY,
    Id_Disciplina INT,
    Nome VARCHAR(150),
    Descricao VARCHAR(1000),
    Data_Maxima DATE,
    Nota INT,
    FOREIGN KEY (Id_Disciplina) REFERENCES Disciplina(Id_Disciplina)
);

CREATE TABLE Publica (
    Id_Publica INT PRIMARY KEY,
    Id_Atividade INT,
    Id_Professor INT,
    Data_Envio DATE,
    Hora_Envio TIME,
    Status BOOLEAN,
    FOREIGN KEY (Id_Atividade) REFERENCES Atividade(Id_Atividade),
    FOREIGN KEY (Id_Professor) REFERENCES Professor(Id_Professor)
);

CREATE TABLE Entrega (
    Id_Entrega INT PRIMARY KEY,
    Id_Atividade INT,
    Id_Aluno INT,
    Data_Entrega DATE,
    Hora TIME,
    Tempo_Atv INT,
    FOREIGN KEY (Id_Atividade) REFERENCES Atividade(Id_Atividade),
    FOREIGN KEY (Id_Aluno) REFERENCES Aluno(Id_Aluno)
);
