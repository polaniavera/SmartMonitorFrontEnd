CREATE TABLE Registro
(
IdRegistro int NOT NULL,
Latitud decimal(8,6),
Longitud decimal(8,6),
TanqueConductor decimal(5,2),
TanquePasajero decimal(5,2),
Rpm decimal(6,2),
Velocidad decimal(6,2),
Temperatura decimal(6,2),
Fecha date,
Hora time,
IdUsuario int,
IdItem int,
PRIMARY KEY(IdRegistro)
);
go


CREATE TABLE Item
(
IdItem int NOT NULL,
Placa varchar(8),
Informacion varchar(250),
IdUsuario int,
IdDocumento int,
IdTipo int
PRIMARY KEY(IdItem)
);
go


CREATE TABLE Documento
(
IdDocumento int NOT NULL,
FechaInicio date,
FechaFin date,
IdTipoDocumento int,
IdUsuario int,
IdItem int
PRIMARY KEY(IdDocumento)
);
go


