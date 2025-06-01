CREATE DATABASE IF NOT EXISTS devops_app;
USE devops_app;

CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL
);

INSERT INTO users (name, email) VALUES
('Grupo 2', 'grupo2.utn@utn.com'),
('Juan', 'juan@utn.com'),
('Lionel', 'lionel@utn.com'),
('Francis', 'francis@utn.com');
