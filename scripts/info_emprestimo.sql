SELECT 
    "EMPRESTIMO"."id_emprestimo", 
    "ALUNO"."nome",
    "ALUNO"."CPF",
    "LIVRO"."titulo", 
    "LIVRO"."editora", 
    "AUTOR"."nome_autor", 
    STRING_AGG("CATEGORIA_DO_LIVRO"."nome_categoria", ', ') AS "nome_categoria", -- Concatena as categorias
    "EMPRESTIMO"."dt_emprestimo", 
    "EMPRESTIMO"."dt_devolucao", 
    "EMPRESTIMO"."dt_devolvido"
FROM 
    "EMPRESTIMO"
JOIN 
    "LIVRO" ON "EMPRESTIMO"."id_livro" = "LIVRO"."id_livro"
JOIN 
    "AUTOR" ON "LIVRO"."id_autor" = "AUTOR"."id_autor"
JOIN 
    "CLASSIFICACAO_LIVRO" ON "LIVRO"."id_livro" = "CLASSIFICACAO_LIVRO"."id_livro"
JOIN 
    "CATEGORIA_DO_LIVRO" ON "CLASSIFICACAO_LIVRO"."id_categoria" = "CATEGORIA_DO_LIVRO"."id_categoria"
JOIN 
    "ALUNO" ON "EMPRESTIMO"."id_matricula" = "ALUNO"."id_matricula"
WHERE 
    "EMPRESTIMO"."id_emprestimo" = 1 -- Filtrando pelo id_emprestimo
GROUP BY 
    "EMPRESTIMO"."id_emprestimo", 
    "ALUNO"."nome",
    "ALUNO"."CPF",
    "LIVRO"."titulo", 
    "LIVRO"."editora", 
    "AUTOR"."nome_autor", 
    "EMPRESTIMO"."dt_emprestimo", 
    "EMPRESTIMO"."dt_devolucao", 
    "EMPRESTIMO"."dt_devolvido";
