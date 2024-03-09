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


/* Teste para  verificar commit
git
