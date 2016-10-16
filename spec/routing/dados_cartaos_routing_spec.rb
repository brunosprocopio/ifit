require "rails_helper"

RSpec.describe DadosCartaosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/dados_cartaos").to route_to("dados_cartaos#index")
    end

    it "routes to #new" do
      expect(:get => "/dados_cartaos/new").to route_to("dados_cartaos#new")
    end

    it "routes to #show" do
      expect(:get => "/dados_cartaos/1").to route_to("dados_cartaos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/dados_cartaos/1/edit").to route_to("dados_cartaos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/dados_cartaos").to route_to("dados_cartaos#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/dados_cartaos/1").to route_to("dados_cartaos#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/dados_cartaos/1").to route_to("dados_cartaos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dados_cartaos/1").to route_to("dados_cartaos#destroy", :id => "1")
    end

  end
end
