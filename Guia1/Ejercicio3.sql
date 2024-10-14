/** 
	Ejercicio 3: Funcion con Valores de Tabla para Listar los Productos por
	Categoria
	Crea una funcion con valores de tabla que reciba el ID de una categoria y
	devuelva todos los productos pertenecientes a esa categoria.
	Parametro de entrada: ID de la categoria (INT).
	Salida: Una tabla con los nombres de los productos y sus descripciones.
**/
CREATE OR ALTER FUNCTION dbo.funcionListarProductosCategoria(
	@idCategoria INT
)
RETURNS TABLE
AS
	RETURN
	(
		SELECT 
			m.idCategoria,
			m.nombreMedicamento,
			m.descripcionMedicamento
		FROM
			medicamentos m
		WHERE 
			m.idCategoria = @idCategoria
	)
GO
SELECT * FROM dbo.funcionListarProductosCategoria(1)
GO