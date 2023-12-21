CREATE DATABASE blogDB;

USE blogDB;

CREATE TABLE autor (
    autorID INT PRIMARY KEY,
    nome VARCHAR(255),
    email VARCHAR(255)
);

CREATE TABLE post (
    postID INT PRIMARY KEY,
    titulo VARCHAR(255),
    conteudo TEXT,
    datapub DATE,
    autorID INT,
    FOREIGN KEY (autorID) REFERENCES autor(autorID)
);

CREATE TABLE comentario (
    comentarioId INT PRIMARY KEY,
    textoComent TEXT,
    dataComent DATE,
    autorID INT,
    postID INT,
    FOREIGN KEY (autorID) REFERENCES autor(autorID),
    FOREIGN KEY (postID) REFERENCES post(postID)
);