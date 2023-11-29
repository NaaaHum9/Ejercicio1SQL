/*-------------------------------------------------------------*/
/*                          Ejercicio 1                        */
/*-------------------------------------------------------------*/
CREATE DATABASE ejercicio1;
USE ejercicio1

CREATE TABLE EMPLEADO(
    Dni INT NOT NULL PRIMARY KEY,
    FechaNac VARCHAR(45),
    NombreP VARCHAR(45),
    Apellido1 VARCHAR(45),
    Apellido2 VARCHAR(45),
    Direccion VARCHAR(45),
    Sueldo VARCHAR(45),
    Sexo VARCHAR(45)
)ENGINE = InnoDB;

CREATE TABLE DEPARTAMENTO(
    Nombre INT NOT NULL PRIMARY KEY,
    NumEmpleados VARCHAR(45),
    FechaI VARCHAR(45),
    PRIMARY KEY (Dni),
    FOREIGN KEY (Dni) REFERENCES EMPLEADO(Dni)
    ON DELETE CASCADE
    ON UPDATE CASCADE
)ENGINE = InnoDB;

CREATE TABLE UBICACIONES(
    Ubicaciones INT NOT NULL,
    Nombre INT NOT NUlL,
    PRIMARY KEY (Nombre),
    FOREIGN KEY (Nombre) REFERENCES DEPARTAMENTO (Nombre)
    ON DELETE CASCADE
    ON UPDATE CASCADE
)ENGINE = InnoDB;

CREATE TABLE PROYECTO(
    Nombre INT NOT NULL,
    Dni INT NOT NULL,
    Ubicaciones VARCHAR(45),
    Horas VARCHAR(45),
    PRIMARY KEY (Dni),
    FOREIGN KEY (Dni) REFERENCES EMPLEADO (Dni)
    ON DELETE CASCADE
    ON UPDATE CASCADE
)ENGINE = InnoDB;

CREATE TABLE SUBORDINADO(
    Dni INT NOT NULL,
    Nombre INT NOT NULL,
    Sexo VARCHAR(45),
    FechaNac VARCHAR(45),
    Relacion VARCHAR(45),
    PRIMARY KEY (Dni, Nombre),
    FOREIGN KEY (Dni) REFERENCES EMPLEADO (Dni)
    FOREIGN KEY (Nombre) REFERENCES DEPARTAMENTO (Nombre)
    ON DELETE CASCADE
    ON UPDATE CASCADE
)ENGINE = InnoDB;
