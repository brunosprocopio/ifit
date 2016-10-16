require 'rails_helper'

RSpec.describe "EnderecoRestaurantes", type: :request do
  describe "GET /endereco_restaurantes" do
    it "works! (now write some real specs)" do
      get endereco_restaurantes_path
      expect(response).to have_http_status(200)
    end
  end
end
