use projeto_bd;

-- Inserir dados na tabela Produtora
INSERT INTO Produtora (CNPJ, Telefone, Endereco) VALUES
('12345678000100', '(11) 1234-5678', 'Rua A, 123, São Paulo');

-- Inserir dados na tabela Cliente
INSERT INTO Cliente (CNPJ, Nome, Telefone) VALUES
('11111111000111', 'Cliente 1', '(11) 1111-1111'),
('22222222000222', 'Cliente 2', '(22) 2222-2222'),
('33333333000333', 'Cliente 3', '(33) 3333-3333'),
('44444444000444', 'Cliente 4', '(44) 4444-4444'),
('55555555000555', 'Cliente 5', '(55) 5555-5555'),
('66666666000666', 'Cliente 6', '(66) 6666-6666');

-- Inserir dados na tabela Funcionario
INSERT INTO Funcionario (Matricula, Nome, Cargo, Endereco, Telefone, Matricula_Chefe) VALUES
(1, 'João Silva', 'Diretor', 'Rua X, 789, São Paulo', '(11) 5555-5555', NULL),
(2, 'Maria Oliveira', 'Roteirista', 'Avenida Y, 101, Rio de Janeiro', '(22) 6666-6666', 1),
(3, 'Pedro Santos', 'Assistente', 'Rua Z, 111, São Paulo', '(11) 7777-7777', 1),
(4, 'Ana Souza', 'Editor de Vídeo', 'Avenida W, 202, Rio de Janeiro', '(22) 8888-8888', 1),
(5, 'Laura Santos', 'Assistente', 'Rua Q, 789, São Paulo', '(11) 9999-9999', 1),
(6, 'Bruno Oliveira', 'Editor de Vídeo', 'Avenida T, 101, Rio de Janeiro', '(22) 1010-1010', 1),
(7, 'Julia Silva', 'Roteirista', 'Rua W, 111, São Paulo', '(11) 1212-1212', 1),
(8, 'Lucas Souza', 'Assistente', 'Avenida X, 202, Rio de Janeiro', '(22) 1313-1313', 1);

-- Inserir dados na tabela Projeto
INSERT INTO Projeto (ID, Tipo, Genero, Titulo) VALUES
(1, 'Documentário', 'História', 'Documentário Histórico'),
(2, 'Longa', 'Drama', 'O Último Suspiro'),
(3, 'Videoclipe', 'Pop', 'Cantarolando'),
(4, 'Curta', 'Comédia', 'Rindo à Toa'),
(5, 'Documentário', 'Ciência', 'Explorando o Universo'),
(6, 'Longa', 'Ação', 'A Grande Aventura'),
(7, 'Videoclipe', 'Rock', 'Caminhos do Rock'),
(8, 'Curta', 'Suspense', 'Segredos do Passado');

-- Inserir dados na tabela Equipamento
INSERT INTO Equipamento (ID, Nome) VALUES
(1, 'Câmera 4K'),
(2, 'Microfone Shotgun'),
(3, 'Tripé'),
(4, 'Luz LED'),
(5, 'Drone'),
(6, 'Lente Grande Angular'),
(7, 'Microfone de Lapela'),
(8, 'Estabilizador de Câmera'),
(9, 'Softbox de Iluminação'),
(10, 'Gravador de Áudio');

-- Inserir dados na tabela Funcionario_Projeto
INSERT INTO Funcionario_Projeto (Matricula_Funcionario, ID_Projeto, Data_entrada, Data_Saida) VALUES
(2, 1, '2023-01-10', '2023-02-20'),
(3, 1, '2023-01-15', '2023-02-25'),
(4, 2, '2023-03-01', '2023-04-15'),
(3, 3, '2023-05-05', '2023-05-15'),
(4, 4, '2023-06-01', '2023-06-10'),
(5, 5, '2023-07-10', '2023-08-20'),
(6, 6, '2023-08-01', '2023-09-15'),
(7, 7, '2023-09-05', '2023-09-15'),
(8, 8, '2023-10-01', '2023-10-10');

-- Inserir dados na tabela Projeto_Equipamento
INSERT INTO Projeto_Equipamento (ID_Projeto, ID_Equipamento, Data_Locacao, Data_Devolucao) VALUES
(1, 1, '2023-01-10', '2023-02-20'),
(1, 2, '2023-01-10', '2023-02-20'),
(2, 1, '2023-03-01', '2023-04-15'),
(2, 3, '2023-03-01', '2023-04-15'),
(3, 1, '2023-05-05', '2023-05-15'),
(4, 4, '2023-06-01', '2023-06-10'),
(5, 6, '2023-07-10', '2023-08-20'),
(5, 7, '2023-07-10', '2023-08-20'),
(6, 8, '2023-08-01', '2023-09-15'),
(6, 9, '2023-08-01', '2023-09-15'),
(7, 10, '2023-09-05', '2023-09-15'),
(8, 9, '2023-10-01', '2023-10-10');
