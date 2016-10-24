require "rails_helper"

RSpec.describe RestaurantesProximosController, type: :routing do
  describe "routing" do

    xit "routes to #index" do
      expect(:get => "/restaurantes_proximos").to route_to("restaurantes_proximos#index")
    end

    xit "routes to #new" do
      expect(:get => "/restaurantes_proximos/new").to route_to("restaurantes_proximos#new")
    end

    xit "routes to #show" do
      expect(:get => "/restaurantes_proximos/1").to route_to("restaurantes_proximos#show", :id => "1")
    end

    xit "routes to #edit" do
      expect(:get => "/restaurantes_proximos/1/edit").to route_to("restaurantes_proximos#edit", :id => "1")
    end

    xit "routes to #create" do
      expect(:post => "/restaurantes_proximos").to route_to("restaurantes_proximos#create")
    end

    xit "routes to #update via PUT" do
      expect(:put => "/restaurantes_proximos/1").to route_to("restaurantes_proximos#update", :id => "1")
    end

    xit "routes to #update via PATCH" do
      expect(:patch => "/restaurantes_proximos/1").to route_to("restaurantes_proximos#update", :id => "1")
    end

    xit "routes to #destroy" do
      expect(:delete => "/restaurantes_proximos/1").to route_to("restaurantes_proximos#destroy", :id => "1")
    end

  end
end
