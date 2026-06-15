CREATE DATABASE CliPro
USE CliPro
CREATE TABLE clientes(
  --id_cliente: numero entero por que es un identificador, valor obligatorio, se suma de uno en uno y es el identificador de la tabla clientes para la tabla general
id_cliente int NOT NULL IDENTITY(1,1)PRIMARY KEY,
  --Nombre: texto acotado, valor obligatorio, ayuda al almacenamiento homogeneo.
Nombre varchar(100)NOT NULL,
  --perfil_bio: texto largo con notas mas largas, información valiosa para el analista, obligatorio.
perfil_bio TEXT NOT NULL,
  --fecha_registro: fecha exacta, no necesita hora, valor obligatorio.
fecha_registro DATE NOT NULL
);
SELECT *
  FROM clientes;
CREATE TABLE productos(
  --id_producto: numero entero por que es un identificador, valor obligatorio, se suma de uno en uno y es el identificador de la tabla productos, para la tabla general.
id_producto int NOT NULL IDENTITY(1,1) PRIMARY KEY,
  --descripción: texto largo debido a heterogeneidad en descripción de producots, obligatorio.
descripcion varchar(255) NOT NULL,
  --precio: No se usa FLOAT, se usa DECIMAL, hasta 10 numeros, con maximo de dos decimales para no extender demasiado.Obligatorio
precio DECIMAL(10,2) NOT NULL,
  --esta_activo: texto corto ya que es condicional. Definir regla para colocar Si o No. Obligatorio pero se completa solo entiendo.
esta_activo varchar(10)NOT NULL
);
SELECT *
  FROM productos;
CREATE TABLE pedidos(
  --id_pedido: numero entero por que es un identificador, valor obligatorio, se suma de uno en uno y es el identificador de la tabla pedidos, para la tabla general.
id_pedido int NOT NULL IDENTITY(1,1) PRIMARY KEY,
  --fecha_pedido: fecha exacta, no necesita hora, valor obligatorio.
fecha_pedido DATETIME NOT NULL,
  --id_cliente: numero entero, obligatorio, trae clave y datos desde tabla clientes y toma como referencia el id_cliente.
id_cliente int NOT NULL FOREIGN KEY REFERENCES clientes(id_cliente),
  --id_producto:numero entero, obligatorio, trae clave y datos desde tabla productos y toma como referencia el id_producto.
id_producto int NOT NULL FOREIGN KEY REFERENCES productos(id_producto)
);

SELECT *
  FROM pedidos;
