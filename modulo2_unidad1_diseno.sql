CREATE DATABASE CliPro
USE CliPro
CREATE TABLE Clientes (
  --ID_Cliente: numero entero por que es un identificador, valor obligatorio, se suma de uno en uno y es el identificador de la tabla Clientes para la tabla general
ID_Cliente int NOT NULL IDENTITY(1,1) PRIMARY KEY,
  --Nombre: texto acotado, valor obligatorio, ayuda al almacenamiento homogeneo.
Nombre varchar(100) NOT NULL,
  --Perfil_bio: texto largo con notas mas largas, información valiosa para el analista, obligatorio.
Perfil_bio TEXT NOT NULL,
  --fecha_registro: fecha exacta, no necesita hora, valor obligatorio.
fecha_registro DATE NOT NULL
);
SELECT*FROM Clientes

CREATE TABLE Productos (
  --ID_Producto: numero entero por que es un identificador, valor obligatorio, se suma de uno en uno y es el identificador de la tabla Productos, para la tabla general.
ID_Producto int NOT NULL IDENTITY(1,1) PRIMARY KEY,
  --Descripción: texto largo debido a heterogeneidad en descripción de producots, obligatorio.
Descripcion varchar(255) NOT NULL,
  --Precio: No se usa FLOAT, se usa DECIMAL, hasta 10 numeros, con maximo de dos decimales para no extender demasiado.Obligatorio
Precio DECIMAL(10,2) NOT NULL,
  --esta_activo: texto corto ya que es condicional. Definir regla para colocar Si o No. Obligatorio pero se completa solo entiendo.
esta_activo varchar(10)NOT NULL
);
SELECT*FROM Productos

CREATE TABLE Pedidos(
  --ID_Pedido: numero entero por que es un identificador, valor obligatorio, se suma de uno en uno y es el identificador de la tabla Pedidos, para la tabla general.
ID_Pedido int NOT NULL IDENTITY(1,1) PRIMARY KEY,
  --Fecha_Pedido: fecha exacta, no necesita hora, valor obligatorio.
Fecha_Pedido DATETIME NOT NULL,
  --ID_Cliente: numero entero, obligatorio, trae clave y datos desde tabla Clientes y toma como referencia el ID_Cliente.
Id_Cliente int NOT NULL FOREIGN KEY REFERENCES Clientes(ID_Cliente),
  --ID_Producto: numero entero, obligatorio, trae clave y datos desde tabla Productos y toma como referencia el ID_Producto.
ID_Producto int NOT NULL FOREIGN KEY REFERENCES Productos(ID_Producto)
);

SELECT *FROM Pedidos
