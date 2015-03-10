require 'rspec';
require_relative "spec_helper";
require_relative "../lib/venta";
require_relative "../lib/producto";

describe Venta do

	it "devuelve el total para una venta con un articulo" do
		@producto_articulo2 = Producto.new("articulo","teclado", 2);
		venta = Venta.new();
		venta.aniadir(@producto_articulo2, 1);
		venta.calcular_total.should == 2
	end

	it "devuelve el total para otra venta con un articulo" do
		@producto_articulo = Producto.new("articulo","computadora", 300);
		venta = Venta.new();
		venta.aniadir(@producto_articulo, 2);
		venta.calcular_total.should == 600
	end

	it "devuelve el total para una venta con dos articulos" do
		@producto_articulo = Producto.new("articulo","computadora", 300);
		@producto_articulo2 = Producto.new("articulo","teclado", 2);
		venta = Venta.new();
		venta.aniadir(@producto_articulo2, 1);
		venta.aniadir(@producto_articulo, 2);
		venta.calcular_total.should == 602
	end

	it "devuelve el total para una venta con un servicio" do
		@producto_servicio2 = Producto.new("servicio", "limpieza de pisos", 10);
		venta = Venta.new();
		venta.aniadir(@producto_servicio2, 4);
		venta.calcular_total.should == 8
	end

	it "devuelve el total para una venta con 2 servicios" do
		@producto_servicio = Producto.new("servicio", "mantenimiento", 2);
		@producto_servicio2 = Producto.new("servicio", "limpieza de pisos", 10);
		venta = Venta.new();
		venta.aniadir(@producto_servicio, 3);
		venta.aniadir(@producto_servicio2, 4);
		venta.calcular_total.should == 9.2
	end

	it "devuelve el total para una venta con un servicio y un articulo" do
		@producto_articulo = Producto.new("articulo","computadora", 300);
		@producto_servicio = Producto.new("servicio", "mantenimiento", 2);
		venta = Venta.new();
		venta.aniadir(@producto_servicio, 3);
		venta.aniadir(@producto_articulo, 2);
		venta.calcular_total.should == 601.2
	end

	it "devuelve el total para una venta con un producto servicio y un producto articulo aniadidos a una venta" do
		@producto_articulo = Producto.new("articulo","computadora", 300);
		@producto_servicio = Producto.new("servicio", "mantenimiento", 2);
		venta = Venta.new();
		venta.aniadir(@producto_servicio, 3);
		venta.aniadir(@producto_articulo, 2);
		venta.calcular_total.should == 601.2
	end


end