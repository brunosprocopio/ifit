require "rails_helper"

RSpec.describe EnderecoSessaosController, type: :routing do
  describe "routing" do

    xit "routes to #index" do
      expect(:get => "/endereco_sessaos").to route_to("endereco_sessaos#index")
    end

    xit "routes to #new" do
      expect(:get => "/endereco_sessaos/new").to route_to("endereco_sessaos#new")
    end

    xit "routes to #show" do
      expect(:get => "/endereco_sessaos/1").to route_to("endereco_sessaos#show", :id => "1")
    end

    xit "routes to #edit" do
      expect(:get => "/endereco_sessaos/1/edit").to route_to("endereco_sessaos#edit", :id => "1")
    end

    xit "routes to #create" do
      expect(:post => "/endereco_sessaos").to route_to("endereco_sessaos#create")
    end

    xit "routes to #update via PUT" do
      expect(:put => "/endereco_sessaos/1").to route_to("endereco_sessaos#update", :id => "1")
    end

    xit "routes to #update via PATCH" do
      expect(:patch => "/endereco_sessaos/1").to route_to("endereco_sessaos#update", :id => "1")
    end

    xit "routes to #destroy" do
      expect(:delete => "/endereco_sessaos/1").to route_to("endereco_sessaos#destroy", :id => "1")
    end

  end
end
