USE actividad5;

INSERT INTO almacenes (direccion, descripcion, nombre_estanteria) VALUES
('Tarragona', 'central', '100A'),
('Reus', 'sede1', '100B'),
('Vendrell', 'sede2', '100C');

INSERT INTO estanterias (Idestanteria, FK_Idalmacen) VALUES
(1, 1),
(2, 2),
(3, 3);

INSERT INTO piezas (precio, descripcion, tipo, FK_Idestanteria, FK_Idpieza) VALUES
(10, 'tornillo', 'A', 1, 1),
(5, 'arandela', 'B', 2, 2),
(7, 'tuerca', 'C', 3, 3);