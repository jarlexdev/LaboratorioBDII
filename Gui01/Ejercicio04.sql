/** 
	Ejercicio 4: Función con Valores de Tabla para Listar las Ventas de un Cliente
	Crea una función con valores de tabla que reciba el ID de un cliente y devuelva
	todas las ventas realizadas por ese cliente, incluyendo la fecha y el total de cada
	venta.
	Parámetro de entrada: ID del cliente (INT).
	Salida: Una tabla con los IDs de ventas, las fechas de venta, y los montos totales.
**/
CREATE OR ALTER FUNCTION dbo.funcionListarVentasCliente(
	@idCliente INT
)
RETURNS TABLE
AS
	RETURN
	(
		SELECT
			v.idCliente,
			c.nombresCliente,
			v.fechaHoraVenta,
			v.totalVenta
		FROM	
			clientes c
		JOIN
			ventas v ON c.idCliente = v.idCliente
		WHERE
			v.idCliente = @idCliente
	)
GO
SELECT * FROM dbo.funcionListarVentasCliente(2)
GO