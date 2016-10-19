require 'rails_helper'

RSpec.describe WelcomeController, type: :controller do

  describe ".get_location_from_cep" do
    context "given a CEP number like '02423030'" do
      it "returns lat : -23.4685109 and lng : -46.6325186" do
        expect(WelcomeController.get_location_from_cep('02423030')).to eq [-23.4685109, -46.6325186]
      end
    end
    context "given a CEP number like '02423050'" do
      it "returns lat : -23.467982 and lng : -46.6325764" do
        expect(WelcomeController.get_location_from_cep('02423050')).to eq [-23.467982, -46.6325764]
      end
    end
    context "given a CEP number like '02417180'" do
      it "returns lat : 23.47576 and lng : -46.630578" do
        expect(WelcomeController.get_location_from_cep('02417180')).to eq [-23.47576, -46.630578]
      end
    end
    context "given a CEP number like '01301100'" do
      it "returns lat : -23.5528462 and lng : -46.6590849" do
        expect(WelcomeController.get_location_from_cep('01301100')).to eq [-23.5528462, -46.6590849]
      end
    end
    context "given a CEP number like '02377000'" do
      it "returns lat : -23.4595464 and lng : -46.6312974" do
        expect(WelcomeController.get_location_from_cep('02377000')).to eq [-23.4595464, -46.6312974]
      end
    end
  end

end
