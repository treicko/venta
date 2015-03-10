require_relative "producto";
#require './producto';
#require File.expand_path(File.dirname(__FILE__) + '/producto')

class Venta

	def initialize()
		@total = 0;
	end

	def aniadir(producto, cantidad)
		@total = @total + producto.cuanto_por(cantidad);
	end

	def calcular_total
		return @total
	end

end