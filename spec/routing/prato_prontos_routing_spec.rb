require "rails_helper"

RSpec.describe PratoProntosController, type: :routing do
  describe "routing" do

    xit "routes to #index" do
      expect(:get => "/prato_prontos").to route_to("prato_prontos#index")
    end

    xit "routes to #new" do
      expect(:get => "/prato_prontos/new").to route_to("prato_prontos#new")
    end

    xit "routes to #show" do
      expect(:get => "/prato_prontos/1").to route_to("prato_prontos#show", :id => "1")
    end

    xit "routes to #edit" do
      expect(:get => "/prato_prontos/1/edit").to route_to("prato_prontos#edit", :id => "1")
    end

    xit "routes to #create" do
      expect(:post => "/prato_prontos").to route_to("prato_prontos#create")
    end

    xit "routes to #update via PUT" do
      expect(:put => "/prato_prontos/1").to route_to("prato_prontos#update", :id => "1")
    end

    xit "routes to #update via PATCH" do
      expect(:patch => "/prato_prontos/1").to route_to("prato_prontos#update", :id => "1")
    end

    xit "routes to #destroy" do
      expect(:delete => "/prato_prontos/1").to route_to("prato_prontos#destroy", :id => "1")
    end

  end
end
