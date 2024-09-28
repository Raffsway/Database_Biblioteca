# Biblioteca - Projeto de Banco de Dados

Este projeto consiste na criação de um banco de dados de uma biblioteca utilizando `PostgreSQL`. O banco de dados foi estruturado para gerenciar informações sobre livros, autores, membros, empréstimos e devoluções, de forma a simular um sistema básico de controle de uma biblioteca.

## Estrutura do Projeto

### Arquivos Incluídos:
- **create_tables.sql**: Script SQL para a criação das tabelas principais do banco de dados.
- **info_emprestimo.sql**: Script SQL para consultar informações sobre os empréstimos de livros.
- **initial_data.sql**: Script SQL para preencher o banco de dados com dados iniciais.

## Tabelas do Banco de Dados

As seguintes tabelas foram criadas:

1. **AUTOR**
   - `id_autor`: Identificador único do autor (chave primária).
   - `nome_autor`: Nome do autor.

2. **CATEGORIA_DO_LIVRO**
   - `id_categoria`: Identificador único da categoria do livro (chave primária).
   - `nome_categoria`: Nome da categoria do livro.

3. **ALUNO**
   - `id_matricula`: Identificador único do aluno (chave primária).
   - `nome`: Nome do aluno.
   - `CPF`: CPF do aluno (único).
   - `sexo`: Sexo do aluno.
   - `email`: Email do aluno.
   - `telefone`: Telefone do aluno.
   - `dt_nascimento`: Data de nascimento do aluno.

4. **LIVRO**
   - `id_livro`: Identificador único do livro (chave primária).
   - `id_autor`: Identificador do autor do livro (chave estrangeira).
   - `titulo`: Título do livro.
   - `ano_publicacao`: Ano de publicação do livro.
   - `editora`: Editora do livro.
   - `qtd_disponivel`: Quantidade disponível do livro.

5. **CLASSIFICACAO_LIVRO**
   - `id_livro`: Identificador do livro (chave primária, chave estrangeira).
   - `id_categoria`: Identificador da categoria do livro (chave primária, chave estrangeira).

6. **EMPRESTIMO**
   - `id_emprestimo`: Identificador único do empréstimo (chave primária).
   - `id_matricula`: Identificador do aluno (chave estrangeira).
   - `id_livro`: Identificador do livro (chave estrangeira).
   - `dt_emprestimo`: Data do empréstimo.
   - `dt_devolucao`: Data prevista para devolução.
   - `dt_devolvido`: Data em que o livro foi devolvido.

## Como Usar

1. Execute o script `create_tables.sql` para criar as tabelas no banco de dados.
2. Preencha o banco de dados com dados iniciais utilizando o script `initial_data.sql`.
3. Utilize o script `info_emprestimo.sql` para consultar informações sobre os empréstimos realizados.

## Conclusão

Esse sistema básico de controle de biblioteca permite gerenciar livros, autores, categorias e empréstimos de forma eficiente. 
