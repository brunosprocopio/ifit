require 'rails_helper'

RSpec.describe "EnderecoSessaos", type: :request do
  describe "GET /endereco_sessaos" do
    it "works! (now write some real specs)" do
      get endereco_sessaos_path
      expect(response).to have_http_status(200)
    end
  end
end
