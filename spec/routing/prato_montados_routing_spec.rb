require "rails_helper"

RSpec.describe PratoMontadosController, type: :routing do
  describe "routing" do

    xit "routes to #index" do
      expect(:get => "/prato_montados").to route_to("prato_montados#index")
    end

    xit "routes to #new" do
      expect(:get => "/prato_montados/new").to route_to("prato_montados#new")
    end

    xit "routes to #show" do
      expect(:get => "/prato_montados/1").to route_to("prato_montados#show", :id => "1")
    end

    xit "routes to #edit" do
      expect(:get => "/prato_montados/1/edit").to route_to("prato_montados#edit", :id => "1")
    end

    xit "routes to #create" do
      expect(:post => "/prato_montados").to route_to("prato_montados#create")
    end

    xit "routes to #update via PUT" do
      expect(:put => "/prato_montados/1").to route_to("prato_montados#update", :id => "1")
    end

    xit "routes to #update via PATCH" do
      expect(:patch => "/prato_montados/1").to route_to("prato_montados#update", :id => "1")
    end

    xit "routes to #destroy" do
      expect(:delete => "/prato_montados/1").to route_to("prato_montados#destroy", :id => "1")
    end

  end
end
