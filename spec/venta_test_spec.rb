require_relative "spec_helper";
require_relative "../lib/venta";

describe Venta do
	it "devuelve el total para una venta con un articulo" do
		venta = Venta.new();
		venta.aniadir("articulo","teclado",2,1);
		venta.calcular_total.should == 2
	end
end