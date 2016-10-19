require "rails_helper"

RSpec.describe AvaliacaosController, type: :routing do
  describe "routing" do

    xit "routes to #index" do
      expect(:get => "/avaliacaos").to route_to("avaliacaos#index")
    end

    xit "routes to #new" do
      expect(:get => "/avaliacaos/new").to route_to("avaliacaos#new")
    end

    xit "routes to #show" do
      expect(:get => "/avaliacaos/1").to route_to("avaliacaos#show", :id => "1")
    end

    xit "routes to #edit" do
      expect(:get => "/avaliacaos/1/edit").to route_to("avaliacaos#edit", :id => "1")
    end

    xit "routes to #create" do
      expect(:post => "/avaliacaos").to route_to("avaliacaos#create")
    end

    xit "routes to #update via PUT" do
      expect(:put => "/avaliacaos/1").to route_to("avaliacaos#update", :id => "1")
    end

    xit "routes to #update via PATCH" do
      expect(:patch => "/avaliacaos/1").to route_to("avaliacaos#update", :id => "1")
    end

    xit "routes to #destroy" do
      expect(:delete => "/avaliacaos/1").to route_to("avaliacaos#destroy", :id => "1")
    end

  end
end
