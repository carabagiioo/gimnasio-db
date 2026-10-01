-- ============================================
-- Proyecto: Base de datos de Gimnasio
-- Script 01: Creación de la base de datos
-- Motor: SQL Server (SSMS)
-- ============================================

IF DB_ID('GimnasioDB') IS NULL
BEGIN
    CREATE DATABASE GimnasioDB;
END
GO

USE GimnasioDB;
GO
