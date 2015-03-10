class Producto
	attr_accessor :tipo, :nombre, :precio;

	def initialize(tipo_producto, nombre_producto, precio_producto)
		@tipo = tipo_producto;
		@nombre = nombre_producto;
		@precio = precio_producto;
	end

	def cuanto_por(cantidad)
		if @tipo=="articulo"
			return @precio*cantidad
		else
			return @precio*cantidad*0.2
		end
	end



end