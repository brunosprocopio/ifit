require 'rails_helper'

RSpec.describe "PagamentoAceitos", type: :request do
  describe "GET /pagamento_aceitos" do
    it "works! (now write some real specs)" do
      get pagamento_aceitos_path
      expect(response).to have_http_status(200)
    end
  end
end
