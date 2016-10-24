require "rails_helper"

RSpec.describe PedidosController, type: :routing do
  describe "routing" do

    xit "routes to #index" do
      expect(:get => "/pedidos").to route_to("pedidos#index")
    end

    xit "routes to #new" do
      expect(:get => "/pedidos/new").to route_to("pedidos#new")
    end

    xit "routes to #show" do
      expect(:get => "/pedidos/1").to route_to("pedidos#show", :id => "1")
    end

    xit "routes to #edit" do
      expect(:get => "/pedidos/1/edit").to route_to("pedidos#edit", :id => "1")
    end

    xit "routes to #create" do
      expect(:post => "/pedidos").to route_to("pedidos#create")
    end

    xit "routes to #update via PUT" do
      expect(:put => "/pedidos/1").to route_to("pedidos#update", :id => "1")
    end

    xit "routes to #update via PATCH" do
      expect(:patch => "/pedidos/1").to route_to("pedidos#update", :id => "1")
    end

    xit "routes to #destroy" do
      expect(:delete => "/pedidos/1").to route_to("pedidos#destroy", :id => "1")
    end

  end
end
