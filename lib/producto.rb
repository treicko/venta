class Producto
	attr_accessor :tipo, :nombre, :precio;

	def initialize(tipo_producto, nombre_producto, precio_producto)
		@tipo = tipo_producto;
		@nombre = nombre_producto;
		@precio = precio_producto;
	end

	def get_tipo_producto
		return @tipo
	end



end