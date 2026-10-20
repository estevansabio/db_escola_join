CREATE DATABASE DB_ESCOLA_JOIN;
USE DB_ESCOLA_JOIN;

CREATE TABLE Alunos (
    cod INT PRIMARY KEY,
    nome VARCHAR(100),
    cidade VARCHAR(100)
);

-- Inserindo dados na tabela Alunos
INSERT INTO Alunos (cod, nome, cidade) VALUES
(1, 'Carlos', 'Sorocaba'),
(2, 'Beatriz', 'Itu'),
(3, 'Lucas', 'Votorantim'),
-- Exercicio 01
(4, 'Felipe', 'Florianopolis'),
(5, 'Bryan', 'Uberlandia'),
(6, 'Gabriel', 'São Paulo'),
(7, 'Estevan', 'Osasco'),
(8, 'Flávio', 'Aluminio'),
(9, 'Bolsonaro', 'Glicério'),
(10, 'Jair Messias', 'Brasilia');


-- Criando a tabela Matriculas
CREATE TABLE Matriculas (
    cod INT PRIMARY KEY,
    valor DECIMAL(10, 2),
    data DATE,
    cod_aluno INT,
    FOREIGN KEY (cod_aluno) REFERENCES Alunos(cod)
);

-- Inserindo dados na tabela Matriculas
INSERT INTO Matriculas (cod, valor, data, cod_aluno) VALUES
(1, 180.00, '2023-10-10', 1),
(2, 250.00, '2023-10-11', 2),
(3, 400.00, '2023-10-12', 3),
-- Exercicio 01
(4, 180.00, '2023-10-13', 4),
(5, 250.00, '2023-10-14', 5),
(6, 400.00, '2023-10-15', 6),
(7, 180.00, '2023-10-16', 7),
(8, 250.00, '2023-10-17', 8),
(9, 400.00, '2023-10-18', 9),
(10, 180.00, '2023-10-19', 10);

-- exercicio 02
select
    Alu.cod as cod_Alu,
    Alu.nome as nome_Alu,
    Alu.cidade as cidade_Alu,
    Mat.cod as cod_Mat,
    Mat.valor as valor_Mat
from Alunos as Alu
inner join Matriculas Mat
on Alu.cod = Mat.cod_aluno
order by Alu.cod,Mat.cod;

-- --------------------------------

-- Exercicio 03

select
    Alu.cod as cod_Alu,
    Alu.nome as nome_Alu,
    Alu.cidade as cidade_Alu,
    Mat.cod as cod_Mat,
    Mat.valor as valor_Mat
from Alunos as Alu
left join Matriculas Mat
on Alu.cod = Mat.cod_aluno
order by Alu.cod,Mat.cod;

-- ------------------------------

-- Exercicio 04

select
    Alu.cod as cod_Alu,
    Alu.nome as nome_Alu,
    Alu.cidade as cidade_Alu,
    Mat.cod as cod_Mat,
    Mat.valor as valor_Mat
from Alunos as Alu
right join Matriculas Mat
on Alu.cod = Mat.cod_aluno
order by Alu.cod,Mat.cod;

-- ------------------------------

-- Exercicios 05

select
    Alu.cod as cod_Alu,
    Alu.nome as nome_Alu,
    Alu.cidade as cidade_Alu,
    Mat.cod as cod_Mat,
    Mat.valor as valor_Mat
from Alunos as Alu
left join Matriculas Mat
on Alu.cod = Mat.cod_aluno
where Mat.cod is null
order by Alu.cod,Mat.cod;

-- ------------------------------

-- Exercicios 06

select
    Alu.cod as cod_Alu,
    Alu.nome as nome_Alu,
    Alu.cidade as cidade_Alu,
    Mat.cod as cod_Mat,
    Mat.valor as valor_Mat
from Alunos as Alu
left join Matriculas Mat
on Alu.cod = Mat.cod_aluno
where Mat.valor > 200.00
order by Alu.cod,Mat.cod;

-- ------------------------------

-- Exercicios 07

select
    Alu.cod as cod_Alu,
    Alu.nome as nome_Alu,
    Mat.cod as cod_Mat,
    Mat.valor as valor_Mat,
    Mat.data as data_Mat
from Alunos as Alu
right join Matriculas Mat
on Alu.cod = Mat.cod_aluno
where Mat.data <= '2023-10-31'
order by Alu.cod,Mat.cod;

-- ------------------------------