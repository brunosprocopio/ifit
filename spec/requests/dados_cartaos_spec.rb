require 'rails_helper'

RSpec.describe "DadosCartaos", type: :request do
  describe "GET /dados_cartaos" do
    it "works! (now write some real specs)" do
      get dados_cartaos_path
      expect(response).to have_http_status(200)
    end
  end
end
