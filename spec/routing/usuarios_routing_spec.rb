require "rails_helper"

RSpec.describe UsuariosController, type: :routing do
  describe "routing" do

    xit "routes to #index" do
      expect(:get => "/usuarios").to route_to("usuarios#index")
    end

    xit "routes to #new" do
      expect(:get => "/usuarios/new").to route_to("usuarios#new")
    end

    xit "routes to #show" do
      expect(:get => "/usuarios/1").to route_to("usuarios#show", :id => "1")
    end

    xit "routes to #edit" do
      expect(:get => "/usuarios/1/edit").to route_to("usuarios#edit", :id => "1")
    end

    xit "routes to #create" do
      expect(:post => "/usuarios").to route_to("usuarios#create")
    end

    xit "routes to #update via PUT" do
      expect(:put => "/usuarios/1").to route_to("usuarios#update", :id => "1")
    end

    xit "routes to #update via PATCH" do
      expect(:patch => "/usuarios/1").to route_to("usuarios#update", :id => "1")
    end

    xit "routes to #destroy" do
      expect(:delete => "/usuarios/1").to route_to("usuarios#destroy", :id => "1")
    end

  end
end
