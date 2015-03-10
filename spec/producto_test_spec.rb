require 'rspec';
require_relative "spec_helper";
require_relative "../lib/producto";

describe Producto do

	it "devuelve el total de un producto tipo articulo con relacion a su precio y la cantidad " do
		@producto_articulo = Producto.new("articulo","teclado", 2);
		@producto_articulo.cuanto_por(2).should == 4;
	end

end