USE UD12Act17;

INSERT INTO CICLOSFORMATIVOS (tipo, nombre) values 
("INFORMATICA", "CICLO SUPERIOR INFO"),
("ADMINISTRATIVO", "CICLO SUPERIOR ADMINISTRATIVO");

-- ALTER TABLE PROFESOR AUTO_INCREMENT=0; 
INSERT INTO PROFESOR (DNI, Genero, tiempoMeses,telf, AñosAntiguedad) values 
(1111, 'hombre',3,977222,1),
(2222, 'hombre',9,977142,1),
(3333, 'mujer',2,97726,5);

-- ALTER TABLE CURSO AUTO_INCREMENT=0; 
INSERT INTO CURSO (nombre, profesorID,ciclosformativosID)values 
("DAM",459,6),
("DAW",460,6),
("BUR",457,7);

INSERT INTO AULA (aulaID,metros)values  -- probar idAI
(22, 2000),
(33, 3333),
(44, 4444);

INSERT INTO HORARIO (fechaid)values
('2022-04-22 09:33:45'),
('2022-04-21 19:06:45');

INSERT INTO ASIGNATURA (nombre,codigoEuropeo,tieneAcceso,asignaturaFKID,cursoID,profesorID)values 
("Sistemas", 533,true,NULL,6,459),
("Sistemas2", 633, false, 1,6,460),
("Programacion", 222, true, NULL,7,460);

INSERT INTO AULAOCUPADA (asignaturaID,numeroaulaID,fechaid) values 
(1,2,'2022-04-21 19:06:45'),
(2,1,'2022-04-21 19:06:45'),
(1,2,'2022-04-21 19:06:45');



