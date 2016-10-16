require "rails_helper"

RSpec.describe RestaurantesProximosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/restaurantes_proximos").to route_to("restaurantes_proximos#index")
    end

    it "routes to #new" do
      expect(:get => "/restaurantes_proximos/new").to route_to("restaurantes_proximos#new")
    end

    it "routes to #show" do
      expect(:get => "/restaurantes_proximos/1").to route_to("restaurantes_proximos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/restaurantes_proximos/1/edit").to route_to("restaurantes_proximos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/restaurantes_proximos").to route_to("restaurantes_proximos#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/restaurantes_proximos/1").to route_to("restaurantes_proximos#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/restaurantes_proximos/1").to route_to("restaurantes_proximos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/restaurantes_proximos/1").to route_to("restaurantes_proximos#destroy", :id => "1")
    end

  end
end
