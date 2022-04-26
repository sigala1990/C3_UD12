use ud12_ej11;

insert into pais (nombre, extension, poblacion) values 
("Ucrania", 603.548, 44.13),
("España", 505.990, 47.35);
select * from pais;

insert into accidente (nombre, posicionV, posicionH) values 
("lago Synevyr ", 11.11, 22.22),
("montaña Goverla", 33.33, 44.44),
("rio Dnipro", 55.55, 66.66);
select * from accidente;
delete from accidente where idAccidente between 4 and 6;

insert into lago (extension, idAccidente) values 
(0.99, 1);
select * from lago;

insert into montanya (altura, idAccidente) values 
(2.061, 2);
select * from montanya;

insert into rio (longitud, idAccidente) values 
(2287.0, 3);
select * from rio;

insert into accidenteOcurrido (idAccidente, idPais) values 
(3, 1);
select * from accidenteOcurrido;

insert into localidad (nombre, idPais) values 
("Kyiv", 1);
select * from localidad;

insert into rioLocalidad (idRio, idLocalidad) values 
(1, 1);
select * from rioLocalidad;


select nombre from localidad inner join rioLocalidad on rioLocalidad.idLocalidad = localidad.idLocalidad;
















