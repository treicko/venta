class Venta

	def initilize()
		@total = 0
	end

	def aniadir(tipo_producto, nombre_producto, precio, cantidad)
		@total = precio * cantidad
	end

	def calcular_total
		@total
	end


end