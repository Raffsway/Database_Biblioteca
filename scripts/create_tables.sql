CREATE TABLE "CATEGORIA_DO_LIVRO"(
    "id_categoria" INTEGER NOT NULL,
    "nome_categoria" VARCHAR(100) NOT NULL,
    PRIMARY KEY ("id_categoria")
);
CREATE TABLE "AUTOR"(
    "id_autor" INTEGER NOT NULL,
    "nome_autor" VARCHAR(255) NOT NULL,
    PRIMARY KEY ("id_autor")
);
CREATE TABLE "ALUNO"(
    "id_matricula" INTEGER NOT NULL, 
    "nome" VARCHAR(50) NOT NULL,
    "CPF" VARCHAR(11) NOT NULL UNIQUE, -- CPF UNICO
    "sexo" VARCHAR(1) NOT NULL,
    "email" VARCHAR(100) NOT NULL,
    "telefone" VARCHAR(20) NOT NULL,
    "dt_nascimento" DATE NOT NULL,
    PRIMARY KEY ("id_matricula")
);
CREATE TABLE "LIVRO"(
    "id_livro" INTEGER NOT NULL,
    "id_autor" INTEGER NOT NULL,
    "titulo" VARCHAR(255) NOT NULL,
    "ano_publicacao" INTEGER NOT NULL,
    "editora" VARCHAR(255) NOT NULL,
    "qtd_disponivel" INTEGER NOT NULL,
    PRIMARY KEY ("id_livro"),
    FOREIGN KEY ("id_autor") REFERENCES "AUTOR"("id_autor")
);
CREATE TABLE "CLASSIFICACAO_LIVRO" (
    "id_livro" INTEGER NOT NULL,
    "id_categoria" INTEGER NOT NULL,
    PRIMARY KEY ("id_livro", "id_categoria"),
    FOREIGN KEY ("id_livro") REFERENCES "LIVRO"("id_livro"),
    FOREIGN KEY ("id_categoria") REFERENCES "CATEGORIA_DO_LIVRO"("id_categoria")
);
CREATE TABLE "EMPRESTIMO"(
    "id_emprestimo" INTEGER NOT NULL,
    "id_matricula" INTEGER NOT NULL,
    "id_livro" INTEGER NOT NULL,
    "dt_emprestimo" DATE NOT NULL,
    "dt_devolucao" DATE NOT NULL,
    "dt_devolvido" DATE,
    PRIMARY KEY ("id_emprestimo"),
    FOREIGN KEY ("id_matricula") REFERENCES "ALUNO"("id_matricula"),
    FOREIGN KEY ("id_livro") REFERENCES "LIVRO"("id_livro")
);