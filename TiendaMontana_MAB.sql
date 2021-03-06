USE [TiendaMontana]
GO
/****** Object:  Table [dbo].[Actividades]    Script Date: 04/06/2021 18:11:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Actividades](
	[idActividad] [int] IDENTITY(1,1) NOT NULL,
	[EscaladaActividad] [varchar](45) NULL,
	[FerrataActividad] [varchar](45) NULL,
	[PaseoCaballoActividad] [varchar](45) NULL,
	[SenderismoActividad] [varchar](45) NULL,
	[HorarioActividad] [time](7) NULL,
 CONSTRAINT [PK_Actividades] PRIMARY KEY CLUSTERED 
(
	[idActividad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Administrativos]    Script Date: 04/06/2021 18:11:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Administrativos](
	[idAdministrativo] [int] IDENTITY(1,1) NOT NULL,
	[EventualTrabajador] [varchar](45) NULL,
	[NombreTrabajador] [varchar](45) NULL,
	[ApellidoTrabajador] [varchar](45) NULL,
	[TelefonoTrabajador] [int] NULL,
	[SueldoTrabajador] [decimal](18, 2) NULL,
	[AtencionPublico] [varchar](3) NULL,
	[Contabilidad] [varchar](3) NULL,
	[idTrabajadorFK] [int] NULL,
 CONSTRAINT [PK_Administrativos] PRIMARY KEY CLUSTERED 
(
	[idAdministrativo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 04/06/2021 18:11:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[idCliente] [int] IDENTITY(1,1) NOT NULL,
	[nombreCliente] [varchar](20) NULL,
	[apellidoCliente] [varchar](45) NULL,
	[dniCliente] [varchar](45) NULL,
	[telefonoCliente] [varchar](45) NULL,
	[direccionCliente] [varchar](100) NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[idCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Guias]    Script Date: 04/06/2021 18:11:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Guias](
	[idTecnico] [int] IDENTITY(1,1) NOT NULL,
	[EventualTrabajador] [varchar](45) NULL,
	[NombreTrabajador] [varchar](45) NULL,
	[ApellidoTrabajador] [varchar](45) NULL,
	[TelefonoTrabajador] [int] NULL,
	[SueldoTrabajador] [decimal](18, 2) NULL,
	[TituloEspecializado] [varchar](45) NULL,
	[idTrabajadorFK] [int] NULL,
 CONSTRAINT [PK_Guias] PRIMARY KEY CLUSTERED 
(
	[idTecnico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reservas]    Script Date: 04/06/2021 18:11:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reservas](
	[idReserva] [int] IDENTITY(1,1) NOT NULL,
	[idActividadFK] [int] NULL,
	[idClienteFK] [int] NULL,
	[fechaReserva] [date] NULL,
 CONSTRAINT [PK_Reservas] PRIMARY KEY CLUSTERED 
(
	[idReserva] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Seguros]    Script Date: 04/06/2021 18:11:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Seguros](
	[idSeguro] [int] IDENTITY(1,1) NOT NULL,
	[cuotaSeguro] [decimal](18, 0) NULL,
	[nombreSeguro] [varchar](45) NULL,
	[direccionCompaniaSeguro] [varchar](100) NULL,
	[gradoGarantiaSeguro] [varchar](45) NULL,
 CONSTRAINT [PK_Seguros] PRIMARY KEY CLUSTERED 
(
	[idSeguro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tienda]    Script Date: 04/06/2021 18:11:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tienda](
	[idTiendaMontana] [int] IDENTITY(1,1) NOT NULL,
	[nombreTiendaMontana] [varchar](45) NULL,
	[direccionTiendaMontana] [varchar](100) NULL,
	[telefonoTiendaMontana] [int] NULL,
	[localidadTiendaMontana] [varchar](45) NULL,
	[idSeguroFK] [int] NULL,
	[idClienteFK] [int] NULL,
 CONSTRAINT [PK_Tienda] PRIMARY KEY CLUSTERED 
(
	[idTiendaMontana] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Trabajadores]    Script Date: 04/06/2021 18:11:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trabajadores](
	[idTrabajador] [int] IDENTITY(1,1) NOT NULL,
	[nombreTrabajador] [varchar](20) NULL,
	[apellidoTrabajador] [varchar](45) NULL,
	[telefonoTrabajador] [varchar](45) NULL,
	[sueldoTrabajador] [decimal](18, 2) NULL,
	[eventualTrabajador] [varchar](45) NULL,
	[idTiendaMontanaFK] [int] NULL,
 CONSTRAINT [PK_Trabajadores] PRIMARY KEY CLUSTERED 
(
	[idTrabajador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Actividades] ON 

INSERT [dbo].[Actividades] ([idActividad], [EscaladaActividad], [FerrataActividad], [PaseoCaballoActividad], [SenderismoActividad], [HorarioActividad]) VALUES (1, N'Ana  Maestre', N'', N'Lucia Chopo', N'', CAST(N'10:00:00' AS Time))
INSERT [dbo].[Actividades] ([idActividad], [EscaladaActividad], [FerrataActividad], [PaseoCaballoActividad], [SenderismoActividad], [HorarioActividad]) VALUES (2, N'', N'Dario Cruz', N'', N'Alex Dominguez', CAST(N'11:00:00' AS Time))
INSERT [dbo].[Actividades] ([idActividad], [EscaladaActividad], [FerrataActividad], [PaseoCaballoActividad], [SenderismoActividad], [HorarioActividad]) VALUES (3, N'Ana  Maestre', N'', N'Lucia Chopo', N'', CAST(N'12:00:00' AS Time))
INSERT [dbo].[Actividades] ([idActividad], [EscaladaActividad], [FerrataActividad], [PaseoCaballoActividad], [SenderismoActividad], [HorarioActividad]) VALUES (4, N'', N'Dario Cruz', N'Lucia Chopo', N'Alex Dominguez', CAST(N'17:00:00' AS Time))
INSERT [dbo].[Actividades] ([idActividad], [EscaladaActividad], [FerrataActividad], [PaseoCaballoActividad], [SenderismoActividad], [HorarioActividad]) VALUES (5, N'Ana  Maestre', N'', N'', N'', CAST(N'18:00:00' AS Time))
SET IDENTITY_INSERT [dbo].[Actividades] OFF
GO
SET IDENTITY_INSERT [dbo].[Administrativos] ON 

INSERT [dbo].[Administrativos] ([idAdministrativo], [EventualTrabajador], [NombreTrabajador], [ApellidoTrabajador], [TelefonoTrabajador], [SueldoTrabajador], [AtencionPublico], [Contabilidad], [idTrabajadorFK]) VALUES (1, N'Si', N'Ana', N'Mestre', 659898789, CAST(1200.00 AS Decimal(18, 2)), N'No', N'No', 1)
INSERT [dbo].[Administrativos] ([idAdministrativo], [EventualTrabajador], [NombreTrabajador], [ApellidoTrabajador], [TelefonoTrabajador], [SueldoTrabajador], [AtencionPublico], [Contabilidad], [idTrabajadorFK]) VALUES (2, N'Si', N'Lucia', N'Chopo', 659568789, CAST(1200.00 AS Decimal(18, 2)), N'No', N'No', 2)
INSERT [dbo].[Administrativos] ([idAdministrativo], [EventualTrabajador], [NombreTrabajador], [ApellidoTrabajador], [TelefonoTrabajador], [SueldoTrabajador], [AtencionPublico], [Contabilidad], [idTrabajadorFK]) VALUES (3, N'Si', N'Dario', N'Cruz', 678989789, CAST(1200.00 AS Decimal(18, 2)), N'No', N'No', 3)
INSERT [dbo].[Administrativos] ([idAdministrativo], [EventualTrabajador], [NombreTrabajador], [ApellidoTrabajador], [TelefonoTrabajador], [SueldoTrabajador], [AtencionPublico], [Contabilidad], [idTrabajadorFK]) VALUES (4, N'No', N'Alex', N'Dominguez', 632989875, CAST(1500.00 AS Decimal(18, 2)), N'No', N'No', 4)
INSERT [dbo].[Administrativos] ([idAdministrativo], [EventualTrabajador], [NombreTrabajador], [ApellidoTrabajador], [TelefonoTrabajador], [SueldoTrabajador], [AtencionPublico], [Contabilidad], [idTrabajadorFK]) VALUES (5, N'No', N'Sergio', N'Pan', 619898784, CAST(1500.00 AS Decimal(18, 2)), N'Si', N'Si', 5)
SET IDENTITY_INSERT [dbo].[Administrativos] OFF
GO
SET IDENTITY_INSERT [dbo].[Clientes] ON 

INSERT [dbo].[Clientes] ([idCliente], [nombreCliente], [apellidoCliente], [dniCliente], [telefonoCliente], [direccionCliente]) VALUES (1, N'Mirian', N'Garcia', N'13465678P', N'656234567', N'Calle Persiana 12')
INSERT [dbo].[Clientes] ([idCliente], [nombreCliente], [apellidoCliente], [dniCliente], [telefonoCliente], [direccionCliente]) VALUES (2, N'Pablo', N'Perez', N'16784569U', N'604548967', N'Camino Pompella 45')
INSERT [dbo].[Clientes] ([idCliente], [nombreCliente], [apellidoCliente], [dniCliente], [telefonoCliente], [direccionCliente]) VALUES (3, N'Francisco', N'Almagro', N'12894589U', N'655858567', N'Camino Pamplona 35')
INSERT [dbo].[Clientes] ([idCliente], [nombreCliente], [apellidoCliente], [dniCliente], [telefonoCliente], [direccionCliente]) VALUES (4, N'Nora', N'Asensio', N'89894589U', N'616858567', N'Calle Diosa Afrodita 3')
SET IDENTITY_INSERT [dbo].[Clientes] OFF
GO
SET IDENTITY_INSERT [dbo].[Guias] ON 

INSERT [dbo].[Guias] ([idTecnico], [EventualTrabajador], [NombreTrabajador], [ApellidoTrabajador], [TelefonoTrabajador], [SueldoTrabajador], [TituloEspecializado], [idTrabajadorFK]) VALUES (1, N'Si', N'Ana', N'Mestre', 659898789, CAST(1200.00 AS Decimal(18, 2)), N'Escalada', 1)
INSERT [dbo].[Guias] ([idTecnico], [EventualTrabajador], [NombreTrabajador], [ApellidoTrabajador], [TelefonoTrabajador], [SueldoTrabajador], [TituloEspecializado], [idTrabajadorFK]) VALUES (2, N'Si', N'Lucia', N'Chopo', 659568789, CAST(1200.00 AS Decimal(18, 2)), N'Paseo Caballo', 2)
INSERT [dbo].[Guias] ([idTecnico], [EventualTrabajador], [NombreTrabajador], [ApellidoTrabajador], [TelefonoTrabajador], [SueldoTrabajador], [TituloEspecializado], [idTrabajadorFK]) VALUES (3, N'Si', N'Dario', N'Cruz', 678989789, CAST(1200.00 AS Decimal(18, 2)), N'Ferrata', 3)
INSERT [dbo].[Guias] ([idTecnico], [EventualTrabajador], [NombreTrabajador], [ApellidoTrabajador], [TelefonoTrabajador], [SueldoTrabajador], [TituloEspecializado], [idTrabajadorFK]) VALUES (4, N'No', N'Alex', N'Dominguez', 632989875, CAST(1500.00 AS Decimal(18, 2)), N'Senderismo', 4)
INSERT [dbo].[Guias] ([idTecnico], [EventualTrabajador], [NombreTrabajador], [ApellidoTrabajador], [TelefonoTrabajador], [SueldoTrabajador], [TituloEspecializado], [idTrabajadorFK]) VALUES (5, N'No', N'Sergio', N'Pan', 619898784, CAST(1500.00 AS Decimal(18, 2)), N'No', 5)
SET IDENTITY_INSERT [dbo].[Guias] OFF
GO
SET IDENTITY_INSERT [dbo].[Reservas] ON 

INSERT [dbo].[Reservas] ([idReserva], [idActividadFK], [idClienteFK], [fechaReserva]) VALUES (3, 3, 2, CAST(N'2020-03-20' AS Date))
INSERT [dbo].[Reservas] ([idReserva], [idActividadFK], [idClienteFK], [fechaReserva]) VALUES (4, 4, 4, CAST(N'2020-04-01' AS Date))
SET IDENTITY_INSERT [dbo].[Reservas] OFF
GO
SET IDENTITY_INSERT [dbo].[Seguros] ON 

INSERT [dbo].[Seguros] ([idSeguro], [cuotaSeguro], [nombreSeguro], [direccionCompaniaSeguro], [gradoGarantiaSeguro]) VALUES (3, CAST(1000 AS Decimal(18, 0)), N'ANGELES - Defuncion', N'Calle Virgen Maria 34', N'Defuncion')
INSERT [dbo].[Seguros] ([idSeguro], [cuotaSeguro], [nombreSeguro], [direccionCompaniaSeguro], [gradoGarantiaSeguro]) VALUES (4, CAST(1800 AS Decimal(18, 0)), N'MAPFRE - Todo Riesgo Vehiculos', N'Calle Gloriosa 13', N'Todo Riesgo Vehiculos')
INSERT [dbo].[Seguros] ([idSeguro], [cuotaSeguro], [nombreSeguro], [direccionCompaniaSeguro], [gradoGarantiaSeguro]) VALUES (5, CAST(1100 AS Decimal(18, 0)), N'ASISA - Accidentes Laborales', N'Canarias 32', N'Accidentes Laborales')
INSERT [dbo].[Seguros] ([idSeguro], [cuotaSeguro], [nombreSeguro], [direccionCompaniaSeguro], [gradoGarantiaSeguro]) VALUES (6, CAST(1800 AS Decimal(18, 0)), N'MAPFRE - Todo Riesgo Actividades', N'Calle Gloriosa 13', N'Todo Riesgo Actividades')
SET IDENTITY_INSERT [dbo].[Seguros] OFF
GO
SET IDENTITY_INSERT [dbo].[Tienda] ON 

INSERT [dbo].[Tienda] ([idTiendaMontana], [nombreTiendaMontana], [direccionTiendaMontana], [telefonoTiendaMontana], [localidadTiendaMontana], [idSeguroFK], [idClienteFK]) VALUES (2, N'NertaSport', N'Calle Galaroza 24', 659789456, N'Zaragoza', 4, 1)
SET IDENTITY_INSERT [dbo].[Tienda] OFF
GO
SET IDENTITY_INSERT [dbo].[Trabajadores] ON 

INSERT [dbo].[Trabajadores] ([idTrabajador], [nombreTrabajador], [apellidoTrabajador], [telefonoTrabajador], [sueldoTrabajador], [eventualTrabajador], [idTiendaMontanaFK]) VALUES (1, N'Ana', N'Mestre', N'659898789', CAST(1200.00 AS Decimal(18, 2)), N'Si', 2)
INSERT [dbo].[Trabajadores] ([idTrabajador], [nombreTrabajador], [apellidoTrabajador], [telefonoTrabajador], [sueldoTrabajador], [eventualTrabajador], [idTiendaMontanaFK]) VALUES (2, N'Lucia', N'Chopo', N'659568789', CAST(1200.00 AS Decimal(18, 2)), N'Si', 2)
INSERT [dbo].[Trabajadores] ([idTrabajador], [nombreTrabajador], [apellidoTrabajador], [telefonoTrabajador], [sueldoTrabajador], [eventualTrabajador], [idTiendaMontanaFK]) VALUES (3, N'Dario', N'Cruz', N'678989789', CAST(1200.00 AS Decimal(18, 2)), N'Si', 2)
INSERT [dbo].[Trabajadores] ([idTrabajador], [nombreTrabajador], [apellidoTrabajador], [telefonoTrabajador], [sueldoTrabajador], [eventualTrabajador], [idTiendaMontanaFK]) VALUES (4, N'Alex', N'Dominguez', N'632989875', CAST(1500.00 AS Decimal(18, 2)), N'No', 2)
INSERT [dbo].[Trabajadores] ([idTrabajador], [nombreTrabajador], [apellidoTrabajador], [telefonoTrabajador], [sueldoTrabajador], [eventualTrabajador], [idTiendaMontanaFK]) VALUES (5, N'Sergio', N'Pan', N'619898784', CAST(1500.00 AS Decimal(18, 2)), N'No', 2)
SET IDENTITY_INSERT [dbo].[Trabajadores] OFF
GO
ALTER TABLE [dbo].[Administrativos]  WITH CHECK ADD  CONSTRAINT [FK_Administrativos_Trabajadores] FOREIGN KEY([idTrabajadorFK])
REFERENCES [dbo].[Trabajadores] ([idTrabajador])
GO
ALTER TABLE [dbo].[Administrativos] CHECK CONSTRAINT [FK_Administrativos_Trabajadores]
GO
ALTER TABLE [dbo].[Guias]  WITH CHECK ADD  CONSTRAINT [FK_Guias_Trabajadores] FOREIGN KEY([idTrabajadorFK])
REFERENCES [dbo].[Trabajadores] ([idTrabajador])
GO
ALTER TABLE [dbo].[Guias] CHECK CONSTRAINT [FK_Guias_Trabajadores]
GO
ALTER TABLE [dbo].[Reservas]  WITH CHECK ADD  CONSTRAINT [FK_Reservas_Actividades] FOREIGN KEY([idActividadFK])
REFERENCES [dbo].[Actividades] ([idActividad])
GO
ALTER TABLE [dbo].[Reservas] CHECK CONSTRAINT [FK_Reservas_Actividades]
GO
ALTER TABLE [dbo].[Reservas]  WITH CHECK ADD  CONSTRAINT [FK_Reservas_Clientes] FOREIGN KEY([idClienteFK])
REFERENCES [dbo].[Clientes] ([idCliente])
GO
ALTER TABLE [dbo].[Reservas] CHECK CONSTRAINT [FK_Reservas_Clientes]
GO
ALTER TABLE [dbo].[Tienda]  WITH CHECK ADD  CONSTRAINT [FK_Tienda_Clientes] FOREIGN KEY([idClienteFK])
REFERENCES [dbo].[Clientes] ([idCliente])
GO
ALTER TABLE [dbo].[Tienda] CHECK CONSTRAINT [FK_Tienda_Clientes]
GO
ALTER TABLE [dbo].[Tienda]  WITH CHECK ADD  CONSTRAINT [FK_Tienda_Seguros] FOREIGN KEY([idSeguroFK])
REFERENCES [dbo].[Seguros] ([idSeguro])
GO
ALTER TABLE [dbo].[Tienda] CHECK CONSTRAINT [FK_Tienda_Seguros]
GO
ALTER TABLE [dbo].[Trabajadores]  WITH CHECK ADD  CONSTRAINT [FK_Trabajadores_Tienda] FOREIGN KEY([idTiendaMontanaFK])
REFERENCES [dbo].[Tienda] ([idTiendaMontana])
GO
ALTER TABLE [dbo].[Trabajadores] CHECK CONSTRAINT [FK_Trabajadores_Tienda]
GO
