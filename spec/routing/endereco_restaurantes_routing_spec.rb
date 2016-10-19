require "rails_helper"

RSpec.describe EnderecoRestaurantesController, type: :routing do
  describe "routing" do

    xit "routes to #index" do
      expect(:get => "/endereco_restaurantes").to route_to("endereco_restaurantes#index")
    end

    xit "routes to #new" do
      expect(:get => "/endereco_restaurantes/new").to route_to("endereco_restaurantes#new")
    end

    xit "routes to #show" do
      expect(:get => "/endereco_restaurantes/1").to route_to("endereco_restaurantes#show", :id => "1")
    end

    xit "routes to #edit" do
      expect(:get => "/endereco_restaurantes/1/edit").to route_to("endereco_restaurantes#edit", :id => "1")
    end

    xit "routes to #create" do
      expect(:post => "/endereco_restaurantes").to route_to("endereco_restaurantes#create")
    end

    xit "routes to #update via PUT" do
      expect(:put => "/endereco_restaurantes/1").to route_to("endereco_restaurantes#update", :id => "1")
    end

    xit "routes to #update via PATCH" do
      expect(:patch => "/endereco_restaurantes/1").to route_to("endereco_restaurantes#update", :id => "1")
    end

    xit "routes to #destroy" do
      expect(:delete => "/endereco_restaurantes/1").to route_to("endereco_restaurantes#destroy", :id => "1")
    end

  end
end
