class Venta

	def initialize()
		@total = 0;
	end

	def aniadir(tipo_producto, nombre_producto, precio, cantidad)
		@total = @total+(precio*cantidad);
	end

	def calcular_total
		return @total
	end

end