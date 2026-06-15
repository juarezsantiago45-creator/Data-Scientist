CREATE DATABASE CliPro
USE CliPro
CREATE TABLE Clientes (
IDCliente int NOT NULL IDENTITY(1,1) PRIMARY KEY,
Nombre varchar(100) NOT NULL,
Perfil_bio TEXT NOT NULL,
fecha_registro DATE NOT NULL,
)
SELECT*FROM Clientes

CREATE TABLE Productos (
IDProducto int NOT NULL IDENTITY(1,1) PRIMARY KEY,
Descripción varchar(255) NOT NULL,
Precio DECIMAL(10,2) NOT NULL,
esta_activo varchar(10)NOT NULL,
)
SELECT*FROM Productos

CREATE TABLE Pedidos(
IDPedido int NOT NULL IDENTITY(1,1) PRIMARY KEY,
Fecha_Pedido DATETIME NOT NULL,
IdCliente int NOT NULL FOREIGN KEY REFERENCES Clientes(IDCliente),
IDProducto int NOT NULL FOREIGN KEY REFERENCES Productos(IDProducto),
)

SELECT *FROM Pedidos
