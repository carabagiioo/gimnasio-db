-- ============================================
-- Proyecto: Base de datos de Gimnasio
-- Script 02: Creación de tablas preliminares
-- Motor: SQL Server (SSMS)
-- ============================================

USE GimnasioDB;
GO

-- Clientes del gimnasio
CREATE TABLE Clientes (
    ClienteID        INT IDENTITY(1,1) PRIMARY KEY,
    Nombre           NVARCHAR(100) NOT NULL,
    ApellidoPaterno  NVARCHAR(100) NOT NULL,
    ApellidoMaterno  NVARCHAR(100) NULL,
    FechaNacimiento  DATE NULL,
    Telefono         NVARCHAR(20) NULL,
    Email            NVARCHAR(150) NULL,
    FechaRegistro    DATETIME NOT NULL DEFAULT GETDATE()
);
GO

-- Catálogo de tipos de membresía (Mensual, Trimestral, Anual, Día, etc.)
CREATE TABLE TiposMembresia (
    TipoMembresiaID  INT IDENTITY(1,1) PRIMARY KEY,
    Nombre           NVARCHAR(50) NOT NULL,
    DuracionDias     INT NOT NULL,
    Precio           DECIMAL(10,2) NOT NULL
);
GO

-- Catálogo de métodos de pago (Efectivo, Tarjeta, Transferencia, etc.)
CREATE TABLE MetodosPago (
    MetodoPagoID     INT IDENTITY(1,1) PRIMARY KEY,
    Nombre           NVARCHAR(50) NOT NULL
);
GO

-- Membresías contratadas por cada cliente
CREATE TABLE Membresias (
    MembresiaID      INT IDENTITY(1,1) PRIMARY KEY,
    ClienteID        INT NOT NULL REFERENCES Clientes(ClienteID),
    TipoMembresiaID  INT NOT NULL REFERENCES TiposMembresia(TipoMembresiaID),
    FechaInicio      DATE NOT NULL,
    FechaFin         DATE NOT NULL,
    Activa           BIT NOT NULL DEFAULT 1
);
GO

-- Pagos asociados a una membresía
CREATE TABLE Pagos (
    PagoID           INT IDENTITY(1,1) PRIMARY KEY,
    MembresiaID      INT NOT NULL REFERENCES Membresias(MembresiaID),
    MetodoPagoID     INT NOT NULL REFERENCES MetodosPago(MetodoPagoID),
    Monto            DECIMAL(10,2) NOT NULL,
    FechaPago        DATETIME NOT NULL DEFAULT GETDATE()
);
GO
