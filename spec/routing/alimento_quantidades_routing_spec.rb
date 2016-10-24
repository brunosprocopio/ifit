require "rails_helper"

RSpec.describe AlimentoQuantidadesController, type: :routing do
  describe "routing" do

    xit "routes to #index" do
      expect(:get => "/alimento_quantidades").to route_to("alimento_quantidades#index")
    end

    xit "routes to #new" do
      expect(:get => "/alimento_quantidades/new").to route_to("alimento_quantidades#new")
    end

    xit "routes to #show" do
      expect(:get => "/alimento_quantidades/1").to route_to("alimento_quantidades#show", :id => "1")
    end

    xit "routes to #edit" do
      expect(:get => "/alimento_quantidades/1/edit").to route_to("alimento_quantidades#edit", :id => "1")
    end

    xit "routes to #create" do
      expect(:post => "/alimento_quantidades").to route_to("alimento_quantidades#create")
    end

    xit "routes to #update via PUT" do
      expect(:put => "/alimento_quantidades/1").to route_to("alimento_quantidades#update", :id => "1")
    end

    xit "routes to #update via PATCH" do
      expect(:patch => "/alimento_quantidades/1").to route_to("alimento_quantidades#update", :id => "1")
    end

    xit "routes to #destroy" do
      expect(:delete => "/alimento_quantidades/1").to route_to("alimento_quantidades#destroy", :id => "1")
    end

  end
end
