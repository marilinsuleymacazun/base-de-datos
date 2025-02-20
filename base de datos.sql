Tabla: Categoria
CREATE TABLE Categoria(
CodigoCategoria int NOT NULL,
NombreCategoria varchar(50)
CONSTRAINT pk_categoria PRIMARY KEY(CodigoCategoria)

2

)
Tabla: Producto
CREATE TABLE Producto
(CodigoProducto int NOT NULL,
NombreProducto varchar(50),
PrecioUnitario decimal(18,2),
CodigoCategoria int
CONSTRAINT pk_producto PRIMARY KEY (CodigoProducto)
CONSTRAINT fk_categoria FOREIGN KEY (CodigoCategoria)
REFERENCES Categoria(CodigoCategoria)
)
INSERT INTO Categoria VALUES
(1,'Bebidas')

INSERT INTO Categoria (CodigoCategoria,NombreCategoria)VALUES
(2,'Carnes rojas')
INSERT INTO Categoria (NombreCategoria,CodigoCategoria)VALUES
('Harinas',3)

INSERT INTO Categoria VALUES
(4,'Vegetales'),
(5,'Frutas'),
(6,'Mariscos')

INSERT INTO Producto VALUES
(1, 'Soda Coca Cola', 1.25,1),
(2, 'Carne bistec',3.50,2),
(3, 'Camarones pequeños',1.15,6),
(4, 'Harina blanca',0.75,3),
(5, 'Te verde',1.0,1),
(6, 'Lomo de aguja',4.50,2),
(7, 'Soda de naranja',1.25,1),
(8, 'Chiles verdes',0.25,4),
(9, 'Tomates',0.2,4),
(10, 'Manzana verde',0.25,5)

SELECT * FROM Producto

SELECT * INTO [Producto CategoriaBebidas]
FROM Producto
WHERE CodigoCategoria=1

SELECT * FROM [Producto CategoriaBebidas]

CREATE TABLE [Producto CategoriaVegetales]
(CodigoProducto int NOT NULL,
NombreProducto varchar(50),
PrecioUnitario decimal(18,2),
CodigoCategoria int
CONSTRAINT pk_producto1 PRIMARY KEY (CodigoProducto)
CONSTRAINT fk_categoria1 FOREIGN KEY (CodigoCategoria)
REFERENCES Categoria(CodigoCategoria)
)


SELECT * FROM [Producto CategoriaVegetales]

INSERT INTO [Producto CategoriaVegetales]
SELECT CodigoProducto,NombreProducto,PrecioUnitario,CodigoCategoria
FROM Producto
WHERE CodigoCategoria=4

SELECT * FROM [Producto CategoriaVegetales]


UPDATE [Producto CategoriaBebidas] SET PrecioUnitario=1.50

UPDATE [Producto CategoriaBebidas] SET PrecioUnitario=1.25
WHERE CodigoProducto=1

SELECT * FROM [Producto CategoriaBebidas]

UPDATE [Producto CategoriaBebidas] SET PrecioUnitario=1.75
WHERE CodigoProducto=1 AND CodigoCategoria=1

SELECT * FROM [Producto CategoriaBebidas]

DELETE FROM [Producto CategoriaBebidas]

SELECT * FROM [Producto CategoriaBebidas]

DELETE FROM Producto
WHERE CodigoCategoria=4

SELECT * FROM Categoria

DELETE FROM Categoria WHERE CodigoCategoria =6

SELECT * FROM Producto

ALTER TABLE Producto
DROP CONSTRAINT fk_categoria

ALTER TABLE Producto
ADD CONSTRAINT fk_categoria
FOREIGN KEY (CodigoCategoria) REFERENCES Categoria (CodigoCategoria)
ON DELETE CASCADE
ON UPDATE CASCADE

DELETE FROM Categoria WHERE CodigoCategoria =6

SELECT * FROM Categoria

SELECT * FROM Producto

(CodigoProducto int NOT NULL,
NombreProducto varchar(50),
PrecioUnitario decimal(18,2),
CodigoCategoria int
CONSTRAINT pk_producto2 PRIMARY KEY (CodigoProducto)
CONSTRAINT fk_categoria2 FOREIGN KEY (CodigoCategoria)

10

REFERENCES Categoria(CodigoCategoria)
ON DELETE CASCADE
ON UPDATE CASCADE
)