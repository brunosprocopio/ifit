require "rails_helper"

RSpec.describe PedidosHasPratosController, type: :routing do
  describe "routing" do

    xit "routes to #index" do
      expect(:get => "/pedidos_has_pratos").to route_to("pedidos_has_pratos#index")
    end

    xit "routes to #new" do
      expect(:get => "/pedidos_has_pratos/new").to route_to("pedidos_has_pratos#new")
    end

    xit "routes to #show" do
      expect(:get => "/pedidos_has_pratos/1").to route_to("pedidos_has_pratos#show", :id => "1")
    end

    xit "routes to #edit" do
      expect(:get => "/pedidos_has_pratos/1/edit").to route_to("pedidos_has_pratos#edit", :id => "1")
    end

    xit "routes to #create" do
      expect(:post => "/pedidos_has_pratos").to route_to("pedidos_has_pratos#create")
    end

    xit "routes to #update via PUT" do
      expect(:put => "/pedidos_has_pratos/1").to route_to("pedidos_has_pratos#update", :id => "1")
    end

    xit "routes to #update via PATCH" do
      expect(:patch => "/pedidos_has_pratos/1").to route_to("pedidos_has_pratos#update", :id => "1")
    end

    xit "routes to #destroy" do
      expect(:delete => "/pedidos_has_pratos/1").to route_to("pedidos_has_pratos#destroy", :id => "1")
    end

  end
end
