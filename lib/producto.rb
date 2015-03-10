class Producto
	attr_accessor :tipo, :nombre, :precio;

	@@FACTOR_SERVICIO = 0.2

	def initialize(tipo_producto, nombre_producto, precio_producto)
		@tipo = tipo_producto;
		@nombre = nombre_producto;
		@precio = precio_producto;
	end

	def cuanto_por(cantidad)
		if @tipo=="articulo"
			return cuanto_por_articulo(cantidad)
		else
			return cuanto_por_servicio(cantidad)
		end
	end

	def cuanto_por_articulo(cantidad)
		return @precio*cantidad
	end

	def cuanto_por_servicio(cantidad)
		return @precio*cantidad*@@FACTOR_SERVICIO
	end

end