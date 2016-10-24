require "rails_helper"

RSpec.describe AlimentoPrecosController, type: :routing do
  describe "routing" do

    xit "routes to #index" do
      expect(:get => "/alimento_precos").to route_to("alimento_precos#index")
    end

    xit "routes to #new" do
      expect(:get => "/alimento_precos/new").to route_to("alimento_precos#new")
    end

    xit "routes to #show" do
      expect(:get => "/alimento_precos/1").to route_to("alimento_precos#show", :id => "1")
    end

    xit "routes to #edit" do
      expect(:get => "/alimento_precos/1/edit").to route_to("alimento_precos#edit", :id => "1")
    end

    xit "routes to #create" do
      expect(:post => "/alimento_precos").to route_to("alimento_precos#create")
    end

    xit "routes to #update via PUT" do
      expect(:put => "/alimento_precos/1").to route_to("alimento_precos#update", :id => "1")
    end

    xit "routes to #update via PATCH" do
      expect(:patch => "/alimento_precos/1").to route_to("alimento_precos#update", :id => "1")
    end

    xit "routes to #destroy" do
      expect(:delete => "/alimento_precos/1").to route_to("alimento_precos#destroy", :id => "1")
    end

  end
end
