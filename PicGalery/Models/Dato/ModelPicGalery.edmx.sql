
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 06/12/2023 17:58:41
-- Generated from EDMX file: C:\Users\jonat\Videos\Projects\AlbumOnline\PicGalery\PicGalery\Models\Dato\ModelPicGalery.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [PicGalery];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Tipos'
CREATE TABLE [dbo].[Tipos] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Descrip] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Photos'
CREATE TABLE [dbo].[Photos] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Img] varbinary(max)  NOT NULL,
    [User] nvarchar(max)  NOT NULL,
    [Fecha] datetime  NOT NULL,
    [Status] nvarchar(max)  NOT NULL,
    [TipoId] int  NOT NULL
);
GO

-- Creating table 'Comentarios'
CREATE TABLE [dbo].[Comentarios] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [User] nvarchar(max)  NOT NULL,
    [Fecha] datetime  NOT NULL,
    [Texto] nvarchar(max)  NOT NULL,
    [PhotoId] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Tipos'
ALTER TABLE [dbo].[Tipos]
ADD CONSTRAINT [PK_Tipos]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Photos'
ALTER TABLE [dbo].[Photos]
ADD CONSTRAINT [PK_Photos]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Comentarios'
ALTER TABLE [dbo].[Comentarios]
ADD CONSTRAINT [PK_Comentarios]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [TipoId] in table 'Photos'
ALTER TABLE [dbo].[Photos]
ADD CONSTRAINT [FK_TipoPhoto]
    FOREIGN KEY ([TipoId])
    REFERENCES [dbo].[Tipos]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TipoPhoto'
CREATE INDEX [IX_FK_TipoPhoto]
ON [dbo].[Photos]
    ([TipoId]);
GO

-- Creating foreign key on [PhotoId] in table 'Comentarios'
ALTER TABLE [dbo].[Comentarios]
ADD CONSTRAINT [FK_PhotoComentario]
    FOREIGN KEY ([PhotoId])
    REFERENCES [dbo].[Photos]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PhotoComentario'
CREATE INDEX [IX_FK_PhotoComentario]
ON [dbo].[Comentarios]
    ([PhotoId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------