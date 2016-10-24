require "rails_helper"

RSpec.describe RestaurantesController, type: :routing do
  describe "routing" do

    xit "routes to #index" do
      expect(:get => "/restaurantes").to route_to("restaurantes#index")
    end

    xit "routes to #new" do
      expect(:get => "/restaurantes/new").to route_to("restaurantes#new")
    end

    xit "routes to #show" do
      expect(:get => "/restaurantes/1").to route_to("restaurantes#show", :id => "1")
    end

    xit "routes to #edit" do
      expect(:get => "/restaurantes/1/edit").to route_to("restaurantes#edit", :id => "1")
    end

    xit "routes to #create" do
      expect(:post => "/restaurantes").to route_to("restaurantes#create")
    end

    xit "routes to #update via PUT" do
      expect(:put => "/restaurantes/1").to route_to("restaurantes#update", :id => "1")
    end

    xit "routes to #update via PATCH" do
      expect(:patch => "/restaurantes/1").to route_to("restaurantes#update", :id => "1")
    end

    xit "routes to #destroy" do
      expect(:delete => "/restaurantes/1").to route_to("restaurantes#destroy", :id => "1")
    end

  end
end
