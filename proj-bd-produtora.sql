use projeto_bd;

-- Tabela Produtora
CREATE TABLE Produtora (
    CNPJ VARCHAR(14) PRIMARY KEY,
    Telefone VARCHAR(20),
    Endereco VARCHAR(100)
);

-- Tabela Cliente
CREATE TABLE Cliente (
    CNPJ VARCHAR(14) PRIMARY KEY,
    Nome VARCHAR(100),
    Telefone VARCHAR(20)
);

-- Tabela Funcionario
CREATE TABLE Funcionario (
    Matricula INT PRIMARY KEY,
    Nome VARCHAR(100),
    Cargo VARCHAR(100),
    Endereco VARCHAR(100),
    Telefone VARCHAR(20)
);

-- Tabela Projeto
CREATE TABLE Projeto (
    ID INT PRIMARY KEY,
    Tipo VARCHAR(50),
    Genero VARCHAR(50),
    Titulo VARCHAR(100)
);

-- Tabela Equipamento
CREATE TABLE Equipamento (
    ID INT PRIMARY KEY,
    Nome VARCHAR(100)
);

-- Tabela Funcionario_Projeto
CREATE TABLE Funcionario_Projeto (
    Matricula_Funcionario INT,
    ID_Projeto INT,
    Data_entrada DATE,
    Data_Saida DATE,
    PRIMARY KEY (Matricula_Funcionario, ID_Projeto),
    FOREIGN KEY (Matricula_Funcionario) REFERENCES Funcionario(Matricula),
    FOREIGN KEY (ID_Projeto) REFERENCES Projeto(ID)
);

-- Tabela Projeto_Equipamento
CREATE TABLE Projeto_Equipamento (
    ID_Projeto INT,
    ID_Equipamento INT,
    Data_Locacao DATE,
    Data_Devolucao DATE,
    PRIMARY KEY (ID_Projeto, ID_Equipamento),
    FOREIGN KEY (ID_Projeto) REFERENCES Projeto(ID),
    FOREIGN KEY (ID_Equipamento) REFERENCES Equipamento(ID)
);

-- Relacionamento de chefia entre funcionários
ALTER TABLE Funcionario
ADD COLUMN Matricula_Chefe INT,
ADD FOREIGN KEY (Matricula_Chefe) REFERENCES Funcionario(Matricula);
