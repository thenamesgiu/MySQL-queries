DROP DATABASE IF EXISTS Pizzaria;
CREATE DATABASE Pizzaria;
USE Pizzaria;

# Tabela Receita
CREATE TABLE Receita(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    instrucoes LONGTEXT NOT NULL,
    autor VARCHAR(90)
);

# Tabela Pizza
CREATE TABLE Pizza(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    sabor VARCHAR(25) NOT NULL,
    preco DECIMAL(4,2),
	descricao MEDIUMTEXT,
    tamanho INT NOT NULL,
    embalagem_tamanho DECIMAL(4,2),
    embalagem_material VARCHAR(30),
    embalagem_preco DECIMAL(4,2),
    Receita_id INT NOT NULL,
    
    FOREIGN KEY (Receita_id) REFERENCES Receita(id)
);

# Tabela Pizzaiolo
CREATE TABLE Pizzaiolo(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT, 
    nome VARCHAR(100) NOT NULL,
    salario DECIMAL(6,2)
);

# Tabela N:N - Pizza e Pizzaiolo
CREATE TABLE Pizza_has_Pizzaiolo(
	Pizza_id INT NOT NULL,
    Pizzaiolo_id INT NOT NULL,
    
    PRIMARY KEY(Pizza_id, Pizzaiolo_id),
    
    FOREIGN KEY (Pizza_id) REFERENCES Pizza(id),
    FOREIGN KEY (Pizzaiolo_id) REFERENCES Pizzaiolo(id)
);

# Tabela ingredientes
CREATE TABLE Ingredientes(
	nome VARCHAR(50),
    Pizza_id INT NOT NULL,
    
    FOREIGN KEY(Pizza_id) REFERENCES Pizza(id)
);

# Inserindo em receitas
INSERT INTO Receita VALUES 
(NULL, 'Faça a massa, acrescente 1/4 de xícara de fubá, coloque molho apimentado', 'Autor 1'),
(NULL, 'Faça a massa, acrescente 1/4 de xícara de fubá, coloque molho rosé', 'Autor 2'),
(NULL, 'Faça a massa, acrescente 1/4 de xícara de fubá, coloque molho de alho', 'Autor 3');

# Inserindo em pizza
INSERT INTO Pizza VALUES 
(NULL, 'Toscana', 44.54, 'pizza com molho apimentado e calabresa', 8, 25.98, 'Reciclável', 25.56, 1),
(NULL, 'Rosé', 35.56, 'pizza broto com molho rosé', 4, 29.98, 'Plástico', 24.45, 2),
(NULL, 'Alho', 40.25, 'pizza com molho de alho', 6, 35.45, 'Papelão', 20.31, 3);

# Inserindo em pizzaiolo
INSERT INTO Pizzaiolo VALUES 
(NULL, 'Tom', 102.25),
(NULL, 'Sara', 128.25),
(NULL, 'Du', 109.25);

# Inserindo em pizza_has_pizzaiolo
INSERT INTO Pizza_has_Pizzaiolo VALUES 
(1, 1),
(2, 3),
(3, 2);

# Inserindo ingredientes
INSERT INTO Ingredientes VALUES 
('Pimenta', 1),
('Mostarda', 2),
('Alho', 3),
('Catupiry', 3),
('Pepperoni', 2),
('Calabresa apimentada', 1);

# Relatório 1 - todas as pizzas e pizzaiolos aptos
SELECT Pizza.sabor AS Sabores, Pizzaiolo.nome AS Pizzaiolo_apto FROM Pizza INNER JOIN Pizza_has_Pizzaiolo ON Pizza.id = Pizza_has_Pizzaiolo.Pizza_id INNER JOIN Pizzaiolo ON Pizza_has_Pizzaiolo.Pizzaiolo_id = Pizzaiolo.id;

# Relatório 2 - todas as pizzas e seus ingredientes
SELECT Pizza.sabor AS Sabores, Ingredientes.nome AS Ingrediente FROM Pizza INNER JOIN Ingredientes ON Ingredientes.Pizza_id = Pizza.id;

# Relatório 3 - todos os ingredientes e as pizzas em que são utilizados
SELECT GROUP_CONCAT(Ingredientes.nome SEPARATOR ', ') AS Ingrediente, Pizza.sabor AS Sabores 
FROM Pizza 
LEFT JOIN Ingredientes ON Ingredientes.Pizza_id = Pizza.id GROUP BY Pizza.sabor;

# Relatório 4 - relatório com os sabores de todas as pizzas, o nome dos pizzaiolos que as fazem e as instruções para produzi-las
SELECT Pizza.sabor AS Sabores, Pizzaiolo.nome AS Pizzaiolo_apto, Receita.instrucoes AS Receitas FROM Pizza INNER JOIN Pizza_has_Pizzaiolo ON Pizza.id = Pizza_has_Pizzaiolo.Pizza_id INNER JOIN Pizzaiolo ON Pizza_has_Pizzaiolo.Pizzaiolo_id = Pizzaiolo.id INNER JOIN Receita ON Pizza.Receita_id = Receita.id;