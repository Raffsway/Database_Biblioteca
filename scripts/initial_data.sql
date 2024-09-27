-- Inserir dados na tabela AUTOR
INSERT INTO "AUTOR" ("id_autor", "nome_autor") VALUES
(1, 'J.K. Rowling'),
(2, 'George R.R. Martin'),
(3, 'Stephen King'),
(4, 'Isaac Asimov'),
(5, 'Agatha Christie');

-- Inserir dados na tabela CATEGORIA_DO_LIVRO
INSERT INTO "CATEGORIA_DO_LIVRO" ("id_categoria", "nome_categoria") VALUES
(1, 'Ficção'),
(2, 'Não-ficção'),
(3, 'Fantasia'),
(4, 'Ciência'),
(5, 'Biografia');

-- Inserir dados na tabela LIVRO
INSERT INTO "LIVRO" ("id_livro", "id_autor", "titulo", "ano_publicacao", "editora", "qtd_disponivel") VALUES
(1, 1, 'Harry Potter e a Pedra Filosofal', 1997, 'Rocco', 5),
(2, 2, 'Guerra dos Tronos', 1996, 'Leya', 3),
(3, 3, 'It: A Coisa', 1986, 'Suma de Letras', 4),
(4, 4, 'Fundação', 1951, 'Editora Aleph', 2),
(5, 5, 'Assassinato no Expresso do Oriente', 1934, 'HarperCollins', 6);

-- Inserir dados na tabela ALUNO
INSERT INTO "ALUNO" ("id_matricula", "nome", "CPF", "sexo", "email", "telefone", "dt_nascimento") VALUES
(1, 'Maria Silva', '12345678901', 'F', 'maria.silva@email.com', '(79) 99999-0001', '2000-05-15'),
(2, 'João Santos', '23456789012', 'M', 'joao.santos@email.com', '(79) 98888-0002', '1999-08-20'),
(3, 'Ana Oliveira', '34567890123', 'F', 'ana.oliveira@email.com', '(79) 97777-0003', '2001-12-25'),
(4, 'Carlos Pereira', '45678901234', 'M', 'carlos.pereira@email.com', '(79) 96666-0004', '1998-03-10'),
(5, 'Fernanda Lima', '56789012345', 'F', 'fernanda.lima@email.com', '(79) 95555-0005', '2002-07-30');

-- Inserir dados na tabela CLASSIFICAÇÃO_LIVRO
INSERT INTO "CLASSIFICAÇÃO_LIVRO" ("id_livro", "id_categoria") VALUES
(1, 1),  -- 'Harry Potter e a Pedra Filosofal' na categoria 'Ficção'
(2, 1),  -- 'Guerra dos Tronos' na categoria 'Ficção'
(3, 3),  -- 'It: A Coisa' na categoria 'Fantasia'
(4, 2),  -- 'Fundação' na categoria 'Não-ficção'
(5, 3);  -- 'Assassinato no Expresso do Oriente' na categoria 'Fantasia'

-- Inserir dados na tabela EMPRESTIMO
INSERT INTO "EMPRESTIMO" ("id_emprestimo", "id_matricula", "id_livro", "dt_emprestimo", "dt_devolucao", "dt_devolvido") VALUES
(100, 1, 1, '2024-09-01', '2024-09-15', '2024-09-14'),
(101, 2, 2, '2024-09-02', '2024-09-16', NULL),
(102, 3, 3, '2024-09-03', '2024-09-17', '2024-09-16'),
(103, 4, 4, '2024-09-04', '2024-09-18', NULL),
(104, 5, 5, '2024-09-05', '2024-09-19', '2024-09-18');