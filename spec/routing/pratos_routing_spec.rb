require "rails_helper"

RSpec.describe PratosController, type: :routing do
  describe "routing" do

    xit "routes to #index" do
      expect(:get => "/pratos").to route_to("pratos#index")
    end

    xit "routes to #new" do
      expect(:get => "/pratos/new").to route_to("pratos#new")
    end

    xit "routes to #show" do
      expect(:get => "/pratos/1").to route_to("pratos#show", :id => "1")
    end

    xit "routes to #edit" do
      expect(:get => "/pratos/1/edit").to route_to("pratos#edit", :id => "1")
    end

    xit "routes to #create" do
      expect(:post => "/pratos").to route_to("pratos#create")
    end

    xit "routes to #update via PUT" do
      expect(:put => "/pratos/1").to route_to("pratos#update", :id => "1")
    end

    xit "routes to #update via PATCH" do
      expect(:patch => "/pratos/1").to route_to("pratos#update", :id => "1")
    end

    xit "routes to #destroy" do
      expect(:delete => "/pratos/1").to route_to("pratos#destroy", :id => "1")
    end

  end
end
