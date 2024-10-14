/**
	Ejercicio 2: Funcion Escalar para Convertir Texto a Minusculas
	Crea una funcion escalar que reciba un texto en mayusculas o mixto y devuelva el
	texto en minusculas.
	Parametro de entrada: Un texto (NVARCHAR).
	Salida: El texto convertido en minusculas (NVARCHAR).
**/
CREATE OR ALTER FUNCTION dbo.funcionConvertirTextoMinuscula(
	@nombresEmpleado NVARCHAR(100)
)
RETURNS NVARCHAR(100)
AS
	BEGIN
		DECLARE @nombresMayus NVARCHAR(100)
		SET @nombresMayus = LOWER(@nombresEmpleado)
		RETURN @nombresMayus
	END
GO
SELECT dbo.funcionConvertirTextoMinuscula('Laura') AS Nombre_Minuscula
GO