-- Criação do banco de dados
CREATE DATABASE IF NOT EXISTS SistemaTurmas;
USE SistemaTurmas;

-- Tabela de Professores
CREATE TABLE IF NOT EXISTS professores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(100) NOT NULL UNIQUE,
    senha VARCHAR(255) NOT NULL,
    nome VARCHAR(100) NOT NULL
);

-- Tabela de Turmas
CREATE TABLE IF NOT EXISTS turmas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    ano INT NOT NULL,
    professor_id INT,
    FOREIGN KEY (professor_id) REFERENCES professores(id) ON DELETE CASCADE
);

-- Tabela de Atividades
CREATE TABLE IF NOT EXISTS atividades (
    id INT AUTO_INCREMENT PRIMARY KEY,
    turma_id INT,
    nome VARCHAR(100) NOT NULL,
    data_inicio DATE NOT NULL,
    data_final DATE NOT NULL,
    FOREIGN KEY (turma_id) REFERENCES turmas(id) ON DELETE CASCADE
);
