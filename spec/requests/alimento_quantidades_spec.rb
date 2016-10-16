require 'rails_helper'

RSpec.describe "AlimentoQuantidades", type: :request do
  describe "GET /alimento_quantidades" do
    it "works! (now write some real specs)" do
      get alimento_quantidades_path
      expect(response).to have_http_status(200)
    end
  end
end
