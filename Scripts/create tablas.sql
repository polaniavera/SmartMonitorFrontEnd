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

CREATE TABLE Registro
(
IdRegistro int NOT NULL,
Latitud decimal(8,6),
Longitud decimal(8,6),
TanqueConductor decimal(5,2),
TanquePasajero decimal(5,2),
BotonPanico bit,
Kilometraje decimal(6,2),
Velocidad decimal(6,2),
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


USE [MonitoreoDB]
GO

/****** Object:  Table [dbo].[Usuario]    Script Date: 09/03/2017 10:43:23 p.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Usuario](
	[IdUsuario] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellido] [varchar](50) NOT NULL,
	[Telefono] [decimal](15, 0) NOT NULL,
	[Empresa] [varchar](50) NULL,
	[Correo] [varchar](50) NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO


