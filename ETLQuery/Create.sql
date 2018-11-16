USE [DW_greenTEC]
GO

/****** Object:  Table [dbo].[H_DW]    Script Date: 15/11/2018 18:52:56 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[H_DW](
	[idDWHecho] [int] IDENTITY(1,1) NOT NULL,
	[idElementoParque] [int] NOT NULL,
	[idGasto] [int] NOT NULL,
	[idIngreso] [int] NOT NULL,
	[idTiempo] [int] NOT NULL,
	[IngresosTotales] [bigint] NOT NULL,
	[GastosTotales] [bigint] NOT NULL,
	[Utilidades] [bigint] NOT NULL,
 CONSTRAINT [PK_H_DW] PRIMARY KEY CLUSTERED 
(
	[idDWHecho] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[H_DW]  WITH NOCHECK ADD  CONSTRAINT [FK_H_DW_D_ElementoParque] FOREIGN KEY([idElementoParque])
REFERENCES [dbo].[D_ElementoParque] ([idElementoParque])
GO

ALTER TABLE [dbo].[H_DW] CHECK CONSTRAINT [FK_H_DW_D_ElementoParque]
GO

ALTER TABLE [dbo].[H_DW]  WITH NOCHECK ADD  CONSTRAINT [FK_H_DW_D_Gasto] FOREIGN KEY([idGasto])
REFERENCES [dbo].[D_Gasto] ([idGasto])
GO

ALTER TABLE [dbo].[H_DW] CHECK CONSTRAINT [FK_H_DW_D_Gasto]
GO

ALTER TABLE [dbo].[H_DW]  WITH NOCHECK ADD  CONSTRAINT [FK_H_DW_D_Ingreso] FOREIGN KEY([idIngreso])
REFERENCES [dbo].[D_Ingreso] ([idIngreso])
GO

ALTER TABLE [dbo].[H_DW] CHECK CONSTRAINT [FK_H_DW_D_Ingreso]
GO

ALTER TABLE [dbo].[H_DW]  WITH NOCHECK ADD  CONSTRAINT [FK_H_DW_D_Tiempo] FOREIGN KEY([idTiempo])
REFERENCES [dbo].[D_Tiempo] ([idTiempo])
GO

ALTER TABLE [dbo].[H_DW] CHECK CONSTRAINT [FK_H_DW_D_Tiempo]
GO

