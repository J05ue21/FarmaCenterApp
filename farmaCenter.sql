USE master;
GO

IF DB_ID(N'FarmaCenterDb') IS NULL
    CREATE DATABASE FarmaCenterDb;
GO

USE FarmaCenterDb;
GO

IF OBJECT_ID(N'[__EFMigrationsHistory]') IS NULL
BEGIN
    CREATE TABLE [__EFMigrationsHistory] (
        [MigrationId] nvarchar(150) NOT NULL,
        [ProductVersion] nvarchar(32) NOT NULL,
        CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY ([MigrationId])
    );
END;
GO

BEGIN TRANSACTION;
IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250924175458_InitialCreate'
)
BEGIN
    CREATE TABLE [Productos] (
        [Id] int NOT NULL IDENTITY,
        [Nombre] nvarchar(max) NOT NULL,
        [Precio] decimal(18,2) NOT NULL,
        [Descripcion] nvarchar(max) NOT NULL,
        [Stock] int NOT NULL,
        CONSTRAINT [PK_Productos] PRIMARY KEY ([Id])
    );
END;

IF NOT EXISTS (
    SELECT * FROM [__EFMigrationsHistory]
    WHERE [MigrationId] = N'20250924175458_InitialCreate'
)
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20250924175458_InitialCreate', N'9.0.9');
END;

COMMIT;
GO

