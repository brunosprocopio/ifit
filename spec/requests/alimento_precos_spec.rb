require 'rails_helper'

RSpec.describe "AlimentoPrecos", type: :request do
  describe "GET /alimento_precos" do
    it "works! (now write some real specs)" do
      get alimento_precos_path
      expect(response).to have_http_status(200)
    end
  end
end
