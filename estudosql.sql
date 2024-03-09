create table aluno(
  id SERIAL PRIMARY KEY,
  nome VARCHAR(50),
  email VARCHAR(50),
  endereco VARCHAR(50)
)

INSERT INTO aluno(nome, email, endereco) VALUES
('Pedro', 'pedro@gmail.com', 'rua a centro'),
('Carlos', 'carlos@gmail.com', 'rua b centro'),
('Danilo', 'danilo@gmail.com', 'rua c centro'),
('Eduardo', 'eduardo@gmail.com', 'rua W dcentro'),
('Maicon', 'Maicon@gmail.com', 'rua  z dcentro'),
('Kleber', 'kleber@gmail.com', 'rua  p dcentro'),
('Caio', 'caio@gmail.com', 'rua d centro');

SELECT*FROM aluno


/* Desenvolva um banco de dados e relacione tabelas através de chaves estrangeiras ou nomes de colunas iguais. Siga as instruções:
crie uma base de dados; 
crie tabelas nessa base de dados;
em cada tabela, adicione atributos;
insira dados em cada tabela;
utilize os comandos Joins para realizar consultas nas tabelas. */

CREATE TABLE disciplinas (
id_disciplina SERIAL PRIMARY KEY,
  nome_disciplina VARCHAR(50) NOT NULL,
  nome_professor VARCHAR (50) NOT NULL
)

CREATE TABLE alunos (
id_alunos SERIAL PRIMARY KEY,
  nome_alunos VARCHAR (50) NOT NULL,
  disciplinas_id INT,
  FOREIGN KEY (disciplinas_id) REFERENCES disciplinas (id_disciplina)
)

INSERT INTO disciplinas(nome_disciplina, nome_professor) VALUES
('Banco de dados', 'Maria Alves'),
('PHP', 'Kleber Alves'),
('Python', 'Juliana Lima'),
('JavaScript', 'Pedro Paulo');

insert into alunos(nome_alunos, disciplinas_id) VALUES
('Cleiton', 2),
('Paulo', 1),
('Juliano', NULL),
('Pedro', 1),
('Maria', 2),
('Mariana', 2),
('Monica', NULL);

SELECT nome_alunos, nome_disciplina FROM alunos
INNER JOIN disciplinas
ON disciplinas.id_disciplina = alunos.disciplinas_id

SELECT nome_alunos, nome_disciplina FROM alunos
alunos LEFT JOIN disciplinas
ON disciplinas.id_disciplina = alunos.disciplinas_id;

SELECT nome_alunos, nome_disciplina FROM alunos
alunos RIGHT JOIN disciplinas
ON disciplinas.id_disciplina = alunos.disciplinas_id;

SELECT nome_alunos, nome_disciplina FROM alunos
alunos LEFT JOIN disciplinas
ON disciplinas.id_disciplina = alunos.disciplinas_id;
UNION
SELECT nome_alunos, nome_disciplina FROM alunos
alunos RIGHT JOIN disciplinas
ON disciplinas.id_disciplina = alunos.disciplinas_id;
