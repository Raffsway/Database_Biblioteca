-- Inserir dados na tabela AUTOR
INSERT INTO "AUTOR" ("id_autor", "nome_autor") VALUES
(1, 'J.K. Rowling'),
(2, 'George R.R. Martin'),
(3, 'Stephen King'),
(4, 'Isaac Asimov'),
(5, 'Agatha Christie');
(6, 'Arthur Conan Doyle'),
(7, 'J.R.R. Tolkien'),
(8, 'Margaret Atwood'),
(9, 'Haruki Murakami'),
(10, 'Neil Gaiman'),
(11, 'Chimamanda Ngozi Adichie'),
(12, 'Dan Brown'),
(13, 'Gabriel Garcia Marquez'),
(14, 'Oscar Wilde'),
(15, 'Aldous Huxley');


-- Inserir dados na tabela CATEGORIA_DO_LIVRO
INSERT INTO "CATEGORIA_DO_LIVRO" ("id_categoria", "nome_categoria") VALUES
(1, 'Ficção'),
(2, 'Não-ficção'),
(3, 'Fantasia'),
(4, 'Ciência'),
(5, 'Biografia');
(6, 'História'),
(7, 'Aventura'),
(8, 'Romance'),
(9, 'Drama'),
(10, 'Suspense'),
(11, 'Distopia'),
(12, 'Terror'),
(13, 'Clássico'),
(14, 'Poesia'),
(15, 'Infantil');

-- Inserir dados na tabela LIVRO
INSERT INTO "LIVRO" ("id_livro", "id_autor", "titulo", "ano_publicacao", "editora", "qtd_disponivel") VALUES
(1, 1, 'Harry Potter e a Pedra Filosofal', 1997, 'Rocco', 5),
(2, 2, 'Guerra dos Tronos', 1996, 'Leya', 3),
(3, 3, 'It: A Coisa', 1986, 'Suma de Letras', 4),
(4, 4, 'Fundação', 1951, 'Editora Aleph', 2),
(5, 5, 'Assassinato no Expresso do Oriente', 1934, 'HarperCollins', 6);
(6, 6, 'Sherlock Holmes: Um Estudo em Vermelho', 1887, 'HarperCollins', 4),
(7, 7, 'O Senhor dos Anéis: A Sociedade do Anel', 1954, 'HarperCollins', 6),
(8, 8, 'O Conto da Aia', 1985, 'Rocco', 5),
(9, 9, 'Norwegian Wood', 1987, 'Alfaguara', 3),
(10, 10, 'Deuses Americanos', 2001, 'Intrínseca', 7),
(11, 11, 'Americanah', 2013, 'Companhia das Letras', 4),
(12, 12, 'O Código Da Vinci', 2003, 'Sextante', 8),
(13, 13, 'Cem Anos de Solidão', 1967, 'Record', 6),
(14, 14, 'O Retrato de Dorian Gray', 1890, 'Penguin', 5),
(15, 15, 'Admirável Mundo Novo', 1932, 'Biblioteca Azul', 4);

-- Inserir dados na tabela ALUNO
INSERT INTO "ALUNO" ("id_matricula", "nome", "CPF", "sexo", "email", "telefone", "dt_nascimento") VALUES
(1, 'Maria Silva', '12345678901', 'F', 'maria.silva@email.com', '(79) 99999-0001', '2000-05-15'),
(2, 'João Santos', '23456789012', 'M', 'joao.santos@email.com', '(79) 98888-0002', '1999-08-20'),
(3, 'Ana Oliveira', '34567890123', 'F', 'ana.oliveira@email.com', '(79) 97777-0003', '2001-12-25'),
(4, 'Carlos Pereira', '45678901234', 'M', 'carlos.pereira@email.com', '(79) 96666-0004', '1998-03-10'),
(5, 'Fernanda Lima', '56789012345', 'F', 'fernanda.lima@email.com', '(79) 95555-0005', '2002-07-30');
(6, 'Lucas Almeida', '67890123456', 'M', 'lucas.almeida@email.com', '(79) 94444-0006', '2001-11-22'),
(7, 'Pedro Costa', '78901234567', 'M', 'pedro.costa@email.com', '(79) 93333-0007', '2000-06-18'),
(8, 'Juliana Souza', '89012345678', 'F', 'juliana.souza@email.com', '(79) 92222-0008', '1999-09-10'),
(9, 'Bruno Ferreira', '90123456789', 'M', 'bruno.ferreira@email.com', '(79) 91111-0009', '2002-04-28'),
(10, 'Amanda Rocha', '01234567890', 'F', 'amanda.rocha@email.com', '(79) 90000-0010', '2001-12-03');

-- Inserir dados na tabela CLASSIFICAÇÃO_LIVRO
INSERT INTO "CLASSIFICACAO_LIVRO" ("id_livro", "id_categoria") VALUES
(1, 1),  -- 'Harry Potter e a Pedra Filosofal' na categoria 'Ficção'
(2, 1),  -- 'Guerra dos Tronos' na categoria 'Ficção'
(3, 3),  -- 'It: A Coisa' na categoria 'Fantasia'
(4, 2),  -- 'Fundação' na categoria 'Não-ficção'
(5, 3);  -- 'Assassinato no Expresso do Oriente' na categoria 'Fantasia'
(6, 7),  -- 'Sherlock Holmes: Um Estudo em Vermelho' na categoria 'Aventura'
(7, 3),  -- 'O Senhor dos Anéis: A Sociedade do Anel' na categoria 'Fantasia'
(8, 11), -- 'O Conto da Aia' na categoria 'Distopia'
(9, 9),  -- 'Norwegian Wood' na categoria 'Drama'
(10, 3), -- 'Deuses Americanos' na categoria 'Fantasia'
(11, 8), -- 'Americanah' na categoria 'Romance'
(12, 10), -- 'O Código Da Vinci' na categoria 'Suspense'
(13, 8), -- 'Cem Anos de Solidão' na categoria 'Romance'
(14, 13), -- 'O Retrato de Dorian Gray' na categoria 'Clássico'
(15, 11); -- 'Admirável Mundo Novo' na categoria 'Distopia'


-- Inserir dados na tabela EMPRESTIMO
INSERT INTO "EMPRESTIMO" ("id_matricula", "id_livro", "dt_emprestimo", "dt_devolucao", "dt_devolvido") VALUES
(1, 1, '2024-09-01', '2024-09-15', '2024-09-14'),
(2, 2, '2024-09-02', '2024-09-16', NULL),
(3, 3, '2024-09-03', '2024-09-17', '2024-09-16'),
(4, 4, '2024-09-04', '2024-09-18', NULL),
(5, 5, '2024-09-05', '2024-09-19', '2024-09-18');
(6, 6, '2024-09-06', '2024-09-20', NULL),
(7, 7, '2024-09-07', '2024-09-21', NULL),
(8, 8, '2024-09-08', '2024-09-22', '2024-09-21'),
(9, 9, '2024-09-09', '2024-09-23', NULL),
(10, 10, '2024-09-10', '2024-09-24', '2024-09-23'),
(1, 6, '2024-09-11', '2024-09-25', NULL),
(2, 7, '2024-09-12', '2024-09-26', '2024-09-25'),
(3, 8, '2024-09-13', '2024-09-27', NULL),
(4, 9, '2024-09-14', '2024-09-28', NULL),
(5, 10, '2024-09-15', '2024-09-29', '2024-09-28');
