require 'rails_helper'

RSpec.describe "RestaurantesProximos", type: :request do
  describe "GET /restaurantes_proximos" do
    xit "works! (now write some real specs)" do
      get restaurantes_proximos_path
      expect(response).to have_http_status(200)
    end
  end
end
