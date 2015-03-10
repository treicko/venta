require 'rspec';
require_relative "spec_helper";
require_relative "../lib/producto";

describe Producto do

	it "devuelve el total de un producto tipo articulo con relacion a su precio y la cantidad " do
		@producto_articulo = Producto.new("articulo","teclado", 2);
		@producto_articulo.cuanto_por(2).should == 4;
	end

	it "devuelve el total de un producto tipo servicio con relacion a su precio y la cantidad " do
		@producto_servicio = Producto.new("servicio", "mantenimiento", 70);
		@producto_servicio.cuanto_por(2).should == 28;
	end

	it "devuelve el total de un producto articulo con relacion a su precio y la cantidad" do
		@producto_articulo = Producto.new("articulo","teclado", 2);
		@producto_articulo.cuanto_por_articulo(2).should == 4;
	end

	it "devuelve el total de un producto servicio con relacion a su precio y la cantidad " do
		@producto_servicio = Producto.new("servicio", "mantenimiento", 70);
		@producto_servicio.cuanto_por_servicio(2).should == 28;
	end

end