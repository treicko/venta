require_relative "producto";
#require './producto';
#require File.expand_path(File.dirname(__FILE__) + '/producto')

class Venta

	def initialize()
		@total = 0;
	end

	def aniadir(producto, cantidad)
		if(producto.tipo=="articulo")
			@total = @total+(producto.precio*cantidad);
		else
			@total = @total+(producto.precio*cantidad*0.2);
		end
	end

	def calcular_total
		return @total
	end

end