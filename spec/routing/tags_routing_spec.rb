require "rails_helper"

RSpec.describe TagsController, type: :routing do
  describe "routing" do

    xit "routes to #index" do
      expect(:get => "/tags").to route_to("tags#index")
    end

    xit "routes to #new" do
      expect(:get => "/tags/new").to route_to("tags#new")
    end

    xit "routes to #show" do
      expect(:get => "/tags/1").to route_to("tags#show", :id => "1")
    end

    xit "routes to #edit" do
      expect(:get => "/tags/1/edit").to route_to("tags#edit", :id => "1")
    end

    xit "routes to #create" do
      expect(:post => "/tags").to route_to("tags#create")
    end

    xit "routes to #update via PUT" do
      expect(:put => "/tags/1").to route_to("tags#update", :id => "1")
    end

    xit "routes to #update via PATCH" do
      expect(:patch => "/tags/1").to route_to("tags#update", :id => "1")
    end

    xit "routes to #destroy" do
      expect(:delete => "/tags/1").to route_to("tags#destroy", :id => "1")
    end

  end
end
