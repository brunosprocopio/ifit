require "rails_helper"

RSpec.describe PagamentoAceitosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/pagamento_aceitos").to route_to("pagamento_aceitos#index")
    end

    it "routes to #new" do
      expect(:get => "/pagamento_aceitos/new").to route_to("pagamento_aceitos#new")
    end

    it "routes to #show" do
      expect(:get => "/pagamento_aceitos/1").to route_to("pagamento_aceitos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/pagamento_aceitos/1/edit").to route_to("pagamento_aceitos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/pagamento_aceitos").to route_to("pagamento_aceitos#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/pagamento_aceitos/1").to route_to("pagamento_aceitos#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/pagamento_aceitos/1").to route_to("pagamento_aceitos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/pagamento_aceitos/1").to route_to("pagamento_aceitos#destroy", :id => "1")
    end

  end
end
