require "rails_helper"

RSpec.describe DadosCartaosController, type: :routing do
  describe "routing" do

    xit "routes to #index" do
      expect(:get => "/dados_cartaos").to route_to("dados_cartaos#index")
    end

    xit "routes to #new" do
      expect(:get => "/dados_cartaos/new").to route_to("dados_cartaos#new")
    end

    xit "routes to #show" do
      expect(:get => "/dados_cartaos/1").to route_to("dados_cartaos#show", :id => "1")
    end

    xit "routes to #edit" do
      expect(:get => "/dados_cartaos/1/edit").to route_to("dados_cartaos#edit", :id => "1")
    end

    xit "routes to #create" do
      expect(:post => "/dados_cartaos").to route_to("dados_cartaos#create")
    end

    xit "routes to #update via PUT" do
      expect(:put => "/dados_cartaos/1").to route_to("dados_cartaos#update", :id => "1")
    end

    xit "routes to #update via PATCH" do
      expect(:patch => "/dados_cartaos/1").to route_to("dados_cartaos#update", :id => "1")
    end

    xit "routes to #destroy" do
      expect(:delete => "/dados_cartaos/1").to route_to("dados_cartaos#destroy", :id => "1")
    end

  end
end
