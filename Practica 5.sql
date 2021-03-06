USE [SIASE]
GO
ALTER TABLE [dbo].[materias_horarios] DROP CONSTRAINT [FK_materias_horarios_materias]
GO
ALTER TABLE [dbo].[materias_horarios] DROP CONSTRAINT [FK_materias_horarios_horario]
GO
ALTER TABLE [dbo].[materias_horarios] DROP CONSTRAINT [FK_materias_horarios_alumno]
GO
ALTER TABLE [dbo].[materias_carreras] DROP CONSTRAINT [FK_materias_carreras_carreras_plan_estudios]
GO
ALTER TABLE [dbo].[kardex] DROP CONSTRAINT [FK_kardex_calificaciones_kardex]
GO
ALTER TABLE [dbo].[horario] DROP CONSTRAINT [FK_horario_profesor]
GO
ALTER TABLE [dbo].[horario] DROP CONSTRAINT [FK_horario_hora]
GO
ALTER TABLE [dbo].[horario] DROP CONSTRAINT [FK_horario_dia]
GO
ALTER TABLE [dbo].[horario] DROP CONSTRAINT [FK_horario_aula]
GO
ALTER TABLE [dbo].[carreras_plan_estudios] DROP CONSTRAINT [FK_carreras_plan_estudios_plan_estudio]
GO
ALTER TABLE [dbo].[carreras_plan_estudios] DROP CONSTRAINT [FK_carreras_plan_estudios_carrera]
GO
ALTER TABLE [dbo].[carrera] DROP CONSTRAINT [FK_carrera_facultades]
GO
ALTER TABLE [dbo].[calificaciones_kardex] DROP CONSTRAINT [FK_calificaciones_kardex_materias_carreras]
GO
ALTER TABLE [dbo].[alumno] DROP CONSTRAINT [FK_alumno_kardex]
GO
ALTER TABLE [dbo].[alumno] DROP CONSTRAINT [FK_alumno_detalle_alumno]
GO
/****** Object:  Table [dbo].[profesor]    Script Date: 16/04/2019 19:03:26 ******/
DROP TABLE [dbo].[profesor]
GO
/****** Object:  Table [dbo].[plan_estudio]    Script Date: 16/04/2019 19:03:26 ******/
DROP TABLE [dbo].[plan_estudio]
GO
/****** Object:  Table [dbo].[materias_horarios]    Script Date: 16/04/2019 19:03:26 ******/
DROP TABLE [dbo].[materias_horarios]
GO
/****** Object:  Table [dbo].[materias_carreras]    Script Date: 16/04/2019 19:03:26 ******/
DROP TABLE [dbo].[materias_carreras]
GO
/****** Object:  Table [dbo].[materias]    Script Date: 16/04/2019 19:03:26 ******/
DROP TABLE [dbo].[materias]
GO
/****** Object:  Table [dbo].[kardex]    Script Date: 16/04/2019 19:03:26 ******/
DROP TABLE [dbo].[kardex]
GO
/****** Object:  Table [dbo].[horario]    Script Date: 16/04/2019 19:03:26 ******/
DROP TABLE [dbo].[horario]
GO
/****** Object:  Table [dbo].[hora]    Script Date: 16/04/2019 19:03:26 ******/
DROP TABLE [dbo].[hora]
GO
/****** Object:  Table [dbo].[facultades]    Script Date: 16/04/2019 19:03:26 ******/
DROP TABLE [dbo].[facultades]
GO
/****** Object:  Table [dbo].[dia]    Script Date: 16/04/2019 19:03:26 ******/
DROP TABLE [dbo].[dia]
GO
/****** Object:  Table [dbo].[detalle_alumno]    Script Date: 16/04/2019 19:03:26 ******/
DROP TABLE [dbo].[detalle_alumno]
GO
/****** Object:  Table [dbo].[carreras_plan_estudios]    Script Date: 16/04/2019 19:03:26 ******/
DROP TABLE [dbo].[carreras_plan_estudios]
GO
/****** Object:  Table [dbo].[carrera]    Script Date: 16/04/2019 19:03:26 ******/
DROP TABLE [dbo].[carrera]
GO
/****** Object:  Table [dbo].[calificaciones_kardex]    Script Date: 16/04/2019 19:03:26 ******/
DROP TABLE [dbo].[calificaciones_kardex]
GO
/****** Object:  Table [dbo].[aula]    Script Date: 16/04/2019 19:03:26 ******/
DROP TABLE [dbo].[aula]
GO
/****** Object:  Table [dbo].[alumno]    Script Date: 16/04/2019 19:03:26 ******/
DROP TABLE [dbo].[alumno]
GO
USE [master]
GO
/****** Object:  Database [SIASE]    Script Date: 16/04/2019 19:03:26 ******/
DROP DATABASE [SIASE]
GO
/****** Object:  Database [SIASE]    Script Date: 16/04/2019 19:03:26 ******/
CREATE DATABASE [SIASE]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SIASE', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\SIASE.mdf' , SIZE = 4160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SIASE_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\SIASE_log.ldf' , SIZE = 1040KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [SIASE] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SIASE].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SIASE] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SIASE] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SIASE] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SIASE] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SIASE] SET ARITHABORT OFF 
GO
ALTER DATABASE [SIASE] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SIASE] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [SIASE] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SIASE] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SIASE] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SIASE] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SIASE] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SIASE] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SIASE] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SIASE] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SIASE] SET  ENABLE_BROKER 
GO
ALTER DATABASE [SIASE] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SIASE] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SIASE] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SIASE] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SIASE] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SIASE] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SIASE] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SIASE] SET RECOVERY FULL 
GO
ALTER DATABASE [SIASE] SET  MULTI_USER 
GO
ALTER DATABASE [SIASE] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SIASE] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SIASE] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SIASE] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [SIASE]
GO
/****** Object:  Table [dbo].[alumno]    Script Date: 16/04/2019 19:03:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[alumno](
	[id] [int] NOT NULL,
	[contraseña] [varchar](10) NULL,
	[id_kardex] [int] NULL,
	[id_detalle] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[aula]    Script Date: 16/04/2019 19:03:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[aula](
	[aula] [int] NOT NULL,
	[descripcion] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[aula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[calificaciones_kardex]    Script Date: 16/04/2019 19:03:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[calificaciones_kardex](
	[id] [int] NOT NULL,
	[id_oportunidad] [int] NULL,
	[id_materia_carrera] [int] NULL,
	[calificacion] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[carrera]    Script Date: 16/04/2019 19:03:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[carrera](
	[id] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[id_facultad] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[carreras_plan_estudios]    Script Date: 16/04/2019 19:03:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[carreras_plan_estudios](
	[id] [int] NOT NULL,
	[id_carrera] [int] NULL,
	[id_plan_estudio] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[detalle_alumno]    Script Date: 16/04/2019 19:03:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[detalle_alumno](
	[id] [int] NOT NULL,
	[nombre] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[dia]    Script Date: 16/04/2019 19:03:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[dia](
	[id] [int] NOT NULL,
	[descripcion] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[facultades]    Script Date: 16/04/2019 19:03:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[facultades](
	[id] [int] NOT NULL,
	[nombre] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[hora]    Script Date: 16/04/2019 19:03:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[hora](
	[id] [int] NOT NULL,
	[descripcion] [varchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[horario]    Script Date: 16/04/2019 19:03:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[horario](
	[id] [int] NOT NULL,
	[id_hora] [int] NULL,
	[id_aula] [int] NULL,
	[id_dia] [int] NULL,
	[id_profesor] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[kardex]    Script Date: 16/04/2019 19:03:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kardex](
	[id] [int] NOT NULL,
	[matricula_alumno] [int] NULL,
	[id_calificaciones_kardex] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[materias]    Script Date: 16/04/2019 19:03:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[materias](
	[id] [int] NOT NULL,
	[nombre_materia] [varchar](50) NULL,
	[id_horario] [int] NULL,
	[semestre] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[materias_carreras]    Script Date: 16/04/2019 19:03:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[materias_carreras](
	[id] [int] NOT NULL,
	[id_materia] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[materias_horarios]    Script Date: 16/04/2019 19:03:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[materias_horarios](
	[id] [int] NOT NULL,
	[id_materia] [int] NULL,
	[id_horario] [int] NULL,
	[id_alumno] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[plan_estudio]    Script Date: 16/04/2019 19:03:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[plan_estudio](
	[id] [int] NOT NULL,
	[fecha_inicio] [date] NULL,
	[fecha_fin] [date] NULL,
	[descripcion] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[profesor]    Script Date: 16/04/2019 19:03:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[profesor](
	[id] [int] NOT NULL,
	[nombre] [varchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[alumno]  WITH CHECK ADD  CONSTRAINT [FK_alumno_detalle_alumno] FOREIGN KEY([id_detalle])
REFERENCES [dbo].[detalle_alumno] ([id])
GO
ALTER TABLE [dbo].[alumno] CHECK CONSTRAINT [FK_alumno_detalle_alumno]
GO
ALTER TABLE [dbo].[alumno]  WITH CHECK ADD  CONSTRAINT [FK_alumno_kardex] FOREIGN KEY([id_kardex])
REFERENCES [dbo].[kardex] ([id])
GO
ALTER TABLE [dbo].[alumno] CHECK CONSTRAINT [FK_alumno_kardex]
GO
ALTER TABLE [dbo].[calificaciones_kardex]  WITH CHECK ADD  CONSTRAINT [FK_calificaciones_kardex_materias_carreras] FOREIGN KEY([id_materia_carrera])
REFERENCES [dbo].[materias_carreras] ([id])
GO
ALTER TABLE [dbo].[calificaciones_kardex] CHECK CONSTRAINT [FK_calificaciones_kardex_materias_carreras]
GO
ALTER TABLE [dbo].[carrera]  WITH CHECK ADD  CONSTRAINT [FK_carrera_facultades] FOREIGN KEY([id_facultad])
REFERENCES [dbo].[facultades] ([id])
GO
ALTER TABLE [dbo].[carrera] CHECK CONSTRAINT [FK_carrera_facultades]
GO
ALTER TABLE [dbo].[carreras_plan_estudios]  WITH CHECK ADD  CONSTRAINT [FK_carreras_plan_estudios_carrera] FOREIGN KEY([id_carrera])
REFERENCES [dbo].[carrera] ([id])
GO
ALTER TABLE [dbo].[carreras_plan_estudios] CHECK CONSTRAINT [FK_carreras_plan_estudios_carrera]
GO
ALTER TABLE [dbo].[carreras_plan_estudios]  WITH CHECK ADD  CONSTRAINT [FK_carreras_plan_estudios_plan_estudio] FOREIGN KEY([id_plan_estudio])
REFERENCES [dbo].[plan_estudio] ([id])
GO
ALTER TABLE [dbo].[carreras_plan_estudios] CHECK CONSTRAINT [FK_carreras_plan_estudios_plan_estudio]
GO
ALTER TABLE [dbo].[horario]  WITH CHECK ADD  CONSTRAINT [FK_horario_aula] FOREIGN KEY([id_aula])
REFERENCES [dbo].[aula] ([aula])
GO
ALTER TABLE [dbo].[horario] CHECK CONSTRAINT [FK_horario_aula]
GO
ALTER TABLE [dbo].[horario]  WITH CHECK ADD  CONSTRAINT [FK_horario_dia] FOREIGN KEY([id_dia])
REFERENCES [dbo].[dia] ([id])
GO
ALTER TABLE [dbo].[horario] CHECK CONSTRAINT [FK_horario_dia]
GO
ALTER TABLE [dbo].[horario]  WITH CHECK ADD  CONSTRAINT [FK_horario_hora] FOREIGN KEY([id_hora])
REFERENCES [dbo].[hora] ([id])
GO
ALTER TABLE [dbo].[horario] CHECK CONSTRAINT [FK_horario_hora]
GO
ALTER TABLE [dbo].[horario]  WITH CHECK ADD  CONSTRAINT [FK_horario_profesor] FOREIGN KEY([id_profesor])
REFERENCES [dbo].[profesor] ([id])
GO
ALTER TABLE [dbo].[horario] CHECK CONSTRAINT [FK_horario_profesor]
GO
ALTER TABLE [dbo].[kardex]  WITH CHECK ADD  CONSTRAINT [FK_kardex_calificaciones_kardex] FOREIGN KEY([id_calificaciones_kardex])
REFERENCES [dbo].[calificaciones_kardex] ([id])
GO
ALTER TABLE [dbo].[kardex] CHECK CONSTRAINT [FK_kardex_calificaciones_kardex]
GO
ALTER TABLE [dbo].[materias_carreras]  WITH CHECK ADD  CONSTRAINT [FK_materias_carreras_carreras_plan_estudios] FOREIGN KEY([id_materia])
REFERENCES [dbo].[carreras_plan_estudios] ([id])
GO
ALTER TABLE [dbo].[materias_carreras] CHECK CONSTRAINT [FK_materias_carreras_carreras_plan_estudios]
GO
ALTER TABLE [dbo].[materias_horarios]  WITH CHECK ADD  CONSTRAINT [FK_materias_horarios_alumno] FOREIGN KEY([id_alumno])
REFERENCES [dbo].[alumno] ([id])
GO
ALTER TABLE [dbo].[materias_horarios] CHECK CONSTRAINT [FK_materias_horarios_alumno]
GO
ALTER TABLE [dbo].[materias_horarios]  WITH CHECK ADD  CONSTRAINT [FK_materias_horarios_horario] FOREIGN KEY([id_horario])
REFERENCES [dbo].[horario] ([id])
GO
ALTER TABLE [dbo].[materias_horarios] CHECK CONSTRAINT [FK_materias_horarios_horario]
GO
ALTER TABLE [dbo].[materias_horarios]  WITH CHECK ADD  CONSTRAINT [FK_materias_horarios_materias] FOREIGN KEY([id_materia])
REFERENCES [dbo].[materias] ([id])
GO
ALTER TABLE [dbo].[materias_horarios] CHECK CONSTRAINT [FK_materias_horarios_materias]
GO
USE [master]
GO
ALTER DATABASE [SIASE] SET  READ_WRITE 
GO
