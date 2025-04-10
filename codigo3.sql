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
    Nota_Max INT,
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
    Hora_Entrega TIME,
    Tempo_Atv INT,
    Nota_Atv INT,
    FOREIGN KEY (Id_Atividade) REFERENCES Atividade(Id_Atividade),
    FOREIGN KEY (Id_Aluno) REFERENCES Aluno(Id_Aluno)
);

INSERT INTO Turma (Id_Turma, Ano_Letivo, Quantidade_Alunos, Codigo, Turno, Sala)
VALUES (1, '2025', 30, '123', 'Manhã', '101');

INSERT INTO Responsavel (Id_Responsavel, Nome, Email, Senha, Data_Nascimento, Telefone, Cpf)
VALUES (1, 'NomeDeResponsavel', 'emaildoresponsavel@email.com', 'responsavelhehe123', '1980-05-20', 11987654321, 12345678900);

INSERT INTO Professor (Id_Professor, Nome, Email, Senha, Data_Nascimento, Telefone, Cpf)
VALUES (1, 'NomedeProfessor', 'professor@email.com', 'sololeveling123', '1990-10-12', 11912345678, 98765432100);

INSERT INTO Disciplina (Id_Disciplina, Id_Professor, Nome)
VALUES (1, 1, 'Matemática');

INSERT INTO Aluno (Id_Aluno, Email, Nome, Senha, Data_Nascimento, Id_Turma, Id_Responsavel)
VALUES (1, 'aluno1@email.com', 'Davi Ribeiro', 'senha123', '2008-01-10', 1, 1);

INSERT INTO Atividade (Id_Atividade, Id_Disciplina, Nome, Descricao, Data_Maxima, Nota_Max)
VALUES (1, 1, 'Projeto de banco de dados', 'Fazer um projeto de banco de dados', '2025-04-10', 10);

INSERT INTO Publica (Id_Publica, Id_Atividade, Id_Professor, Data_Envio, Hora_Envio, Status)
VALUES (1, 1, 1, '2025-04-09', '08:00:00', TRUE);

INSERT INTO Entrega (Id_Entrega, Id_Atividade, Id_Aluno, Data_Entrega, Hora_Entrega, Tempo_Atv, Nota_Atv)
VALUES (1, 1, 1, '2025-04-10', '10:30:00', 45, 9);
