CREATE DATABASE RegistroVacunacion;

CREATE TABLE Dueños(
    idDueño int AUTO_INCREMENT PRIMARY KEY,
    NomMascota varchar(40),
    dueño varchar(80),
    tel varchar(20),
    direccion varchar(40)
);

CREATE table vacunas(
    idVacuna int AUTO_INCREMENT PRIMARY KEY,
    NomVacuna varchar(40)
);

CREATE TABLE Vacunacion(
    idVacunacion int AUTO_INCREMENT PRIMARY KEY,
    vacuna int,
    añovacuna varchar(40),
    dueño int,
    FOREIGN KEY	(vacuna) REFERENCES vacunas(idVacuna),
    FOREIGN KEY (dueño) REFERENCES dueños(idDueño)
);