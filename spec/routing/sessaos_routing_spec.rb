require "rails_helper"

RSpec.describe SessaosController, type: :routing do
  describe "routing" do

    xit "routes to #index" do
      expect(:get => "/sessaos").to route_to("sessaos#index")
    end

    xit "routes to #new" do
      expect(:get => "/sessaos/new").to route_to("sessaos#new")
    end

    xit "routes to #show" do
      expect(:get => "/sessaos/1").to route_to("sessaos#show", :id => "1")
    end

    xit "routes to #edit" do
      expect(:get => "/sessaos/1/edit").to route_to("sessaos#edit", :id => "1")
    end

    xit "routes to #create" do
      expect(:post => "/sessaos").to route_to("sessaos#create")
    end

    xit "routes to #update via PUT" do
      expect(:put => "/sessaos/1").to route_to("sessaos#update", :id => "1")
    end

    xit "routes to #update via PATCH" do
      expect(:patch => "/sessaos/1").to route_to("sessaos#update", :id => "1")
    end

    xit "routes to #destroy" do
      expect(:delete => "/sessaos/1").to route_to("sessaos#destroy", :id => "1")
    end

  end
end
