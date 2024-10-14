/**
	Ejercicio 1: Funci�n Escalar para Calcular la Edad de un Empleado
	Crea una funci�n escalar que reciba la fecha de nacimiento de un empleado y
	calcule su edad actual en a�os.
	Par�metro de entrada: Fecha de nacimiento del empleado (DATE).
	Salida: Edad del empleado (n�mero entero).
**/
CREATE OR ALTER FUNCTION dbo.funcionCalcularEdadEmpleado (
	@fechaNacimiento DATE
)
RETURNS INT
AS
	BEGIN
		DECLARE @edad INT
		SET @edad = YEAR(GETDATE()) - YEAR(@fechaNacimiento)
		RETURN @edad
	END
GO
SELECT dbo.funcionCalcularEdadEmpleado('1993-08-22') AS Edad
GO