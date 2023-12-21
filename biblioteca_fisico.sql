/* biblioteca_logico: */
CREATE DATABASE biblioteca;
USE biblioteca;

CREATE TABLE livro (
    id_livro int PRIMARY KEY,
    qnt_estoque int,
    nome varchar(255),
    id_autor int,
    FOREIGN KEY (id_autor) REFERENCES autor (id_autor)
);

CREATE TABLE usuario (
    id_usuario int PRIMARY KEY,
    nome_usuario varchar(255)
);

CREATE TABLE autor (
    id_autor int PRIMARY KEY,
    nome varchar(255)
);

CREATE TABLE emprestimos (
    id_emprestimos int PRIMARY KEY,
    id_livro int,
    FOREIGN KEY (id_livro) REFERENCES livro (id_livro)
);

ALTER TABLE usuario ADD COLUMN id_emprestimos int;
ALTER TABLE usuario ADD FOREIGN KEY (id_emprestimos) REFERENCES emprestimos (id_emprestimos);