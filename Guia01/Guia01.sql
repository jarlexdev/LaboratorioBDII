USE farmacia
GO
/** 
	Para el Procedimiento Almacenado Realizar lo que falta del CRUD –
	SELECT/UPDATE/DELETE/ y aplicación de filtro usando like % % para una tabla
	cualquiera
**/
-- INSERT --
CREATE OR ALTER PROCEDURE dbo.insertarCliente(
    @nombresCliente NVARCHAR(100),
    @apellidosCliente NVARCHAR(100),
    @telefonoCliente NVARCHAR(15),
    @generoCliente CHAR(1),
    @duiCliente NVARCHAR(10),
    @fechaNacCliente DATE,
    @correoCliente NVARCHAR(100),
    @idDireccion INT
)
AS
	BEGIN
		INSERT INTO clientes (nombresCliente, apellidosCliente, telefonoCliente, generoCliente, duiCliente, fechaNacCliente, correoCliente, idDireccion)
		VALUES (@nombresCliente, @apellidosCliente, @telefonoCliente, @generoCliente, @duiCliente, @fechaNacCliente, @correoCliente, @idDireccion);
		PRINT 'CLIENTE INSERTADO EXITOSAMENTE...';
	END
GO
EXEC dbo.insertarCliente 
    @nombresCliente = 'Carlos',
    @apellidosCliente = 'Ramírez',
    @telefonoCliente = '1234-5678',
    @generoCliente = 'M',
    @duiCliente = '12345678-9',
    @fechaNacCliente = '1990-05-12',
    @correoCliente = 'carlos@example.com',
    @idDireccion = 1;
GO
-- SELECT y APLICACION DE FILTRO USANDO LIKE % %--
CREATE OR ALTER PROCEDURE dbo.seleccionarClientes(
    @filtro NVARCHAR(100)
)
AS
	BEGIN
		IF @filtro IS NOT NULL
		BEGIN
			SELECT *
			FROM 
				clientes
			WHERE 
				nombresCliente LIKE '%' + @filtro + '%' OR apellidosCliente LIKE '%' + @filtro + '%';
		END
		ELSE
		BEGIN
			SELECT * FROM clientes;
		END
	END
GO
EXEC dbo.seleccionarClientes @filtro = 'Carlos';
GO
-- UPDATE --
CREATE OR ALTER PROCEDURE dbo.actualizarCliente(
    @idCliente INT,
    @nombresCliente NVARCHAR(100),
    @apellidosCliente NVARCHAR(100),
    @telefonoCliente NVARCHAR(15),
    @generoCliente CHAR(1),
    @duiCliente NVARCHAR(10),
    @fechaNacCliente DATE,
    @correoCliente NVARCHAR(100),
    @idDireccion INT
)
AS
	BEGIN
		UPDATE 
			clientes
		SET 
			nombresCliente = @nombresCliente,
			apellidosCliente = @apellidosCliente,
			telefonoCliente = @telefonoCliente,
			generoCliente = @generoCliente,
			duiCliente = @duiCliente,
			fechaNacCliente = @fechaNacCliente,
			correoCliente = @correoCliente,
			idDireccion = @idDireccion
		WHERE 
			idCliente = @idCliente;
		PRINT 'CLIENTE ACTUALIZADO EXITOSAMENTE...';
	END
GO
EXEC dbo.actualizarCliente 
    @idCliente = 11,
    @nombresCliente = 'Carlos Alberto',
    @apellidosCliente = 'Ramírez Pérez',
    @telefonoCliente = '8765-4321',
    @generoCliente = 'M',
    @duiCliente = '12345678-9',
    @fechaNacCliente = '1990-05-12',
    @correoCliente = 'carlos.alberto@example.com',
    @idDireccion = 2;
GO
-- DELETE --
CREATE OR ALTER PROCEDURE dbo.eliminarCliente(
    @idCliente INT
)
AS
	BEGIN
		DELETE 
		FROM 
			clientes
		WHERE 
			idCliente = @idCliente;
		PRINT 'CLIENTE ELIMINADO EXITOSAMENTE...';
	END
GO
EXEC dbo.eliminarCliente @idCliente = 11;
GO




