require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe RestaurantesProximosController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # RestaurantesProximo. As you add validations to RestaurantesProximo, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # RestaurantesProximosController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    xit "assigns all restaurantes_proximos as @restaurantes_proximos" do
      restaurantes_proximo = RestaurantesProximo.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(assigns(:restaurantes_proximos)).to eq([restaurantes_proximo])
    end
  end

  describe "GET #show" do
    xit "assigns the requested restaurantes_proximo as @restaurantes_proximo" do
      restaurantes_proximo = RestaurantesProximo.create! valid_attributes
      get :show, params: {id: restaurantes_proximo.to_param}, session: valid_session
      expect(assigns(:restaurantes_proximo)).to eq(restaurantes_proximo)
    end
  end

  describe "GET #new" do
    xit "assigns a new restaurantes_proximo as @restaurantes_proximo" do
      get :new, params: {}, session: valid_session
      expect(assigns(:restaurantes_proximo)).to be_a_new(RestaurantesProximo)
    end
  end

  describe "GET #edit" do
    xit "assigns the requested restaurantes_proximo as @restaurantes_proximo" do
      restaurantes_proximo = RestaurantesProximo.create! valid_attributes
      get :edit, params: {id: restaurantes_proximo.to_param}, session: valid_session
      expect(assigns(:restaurantes_proximo)).to eq(restaurantes_proximo)
    end
  end

  describe "#pesquisar" do
    xit "realiza uma pesquisa" do

    end
  end

  describe "POST #create" do
    context "with valid params" do
      xit "creates a new RestaurantesProximo" do
        expect {
          post :create, params: {restaurantes_proximo: valid_attributes}, session: valid_session
        }.to change(RestaurantesProximo, :count).by(1)
      end

      xit "assigns a newly created restaurantes_proximo as @restaurantes_proximo" do
        post :create, params: {restaurantes_proximo: valid_attributes}, session: valid_session
        expect(assigns(:restaurantes_proximo)).to be_a(RestaurantesProximo)
        expect(assigns(:restaurantes_proximo)).to be_persisted
      end

      xit "redirects to the created restaurantes_proximo" do
        post :create, params: {restaurantes_proximo: valid_attributes}, session: valid_session
        expect(response).to redirect_to(RestaurantesProximo.last)
      end
    end

    context "with invalid params" do
      xit "assigns a newly created but unsaved restaurantes_proximo as @restaurantes_proximo" do
        post :create, params: {restaurantes_proximo: invalid_attributes}, session: valid_session
        expect(assigns(:restaurantes_proximo)).to be_a_new(RestaurantesProximo)
      end

      xit "re-renders the 'new' template" do
        post :create, params: {restaurantes_proximo: invalid_attributes}, session: valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      xit "updates the requested restaurantes_proximo" do
        restaurantes_proximo = RestaurantesProximo.create! valid_attributes
        put :update, params: {id: restaurantes_proximo.to_param, restaurantes_proximo: new_attributes}, session: valid_session
        restaurantes_proximo.reload
        skip("Add assertions for updated state")
      end

      xit "assigns the requested restaurantes_proximo as @restaurantes_proximo" do
        restaurantes_proximo = RestaurantesProximo.create! valid_attributes
        put :update, params: {id: restaurantes_proximo.to_param, restaurantes_proximo: valid_attributes}, session: valid_session
        expect(assigns(:restaurantes_proximo)).to eq(restaurantes_proximo)
      end

      xit "redirects to the restaurantes_proximo" do
        restaurantes_proximo = RestaurantesProximo.create! valid_attributes
        put :update, params: {id: restaurantes_proximo.to_param, restaurantes_proximo: valid_attributes}, session: valid_session
        expect(response).to redirect_to(restaurantes_proximo)
      end
    end

    context "with invalid params" do
      xit "assigns the restaurantes_proximo as @restaurantes_proximo" do
        restaurantes_proximo = RestaurantesProximo.create! valid_attributes
        put :update, params: {id: restaurantes_proximo.to_param, restaurantes_proximo: invalid_attributes}, session: valid_session
        expect(assigns(:restaurantes_proximo)).to eq(restaurantes_proximo)
      end

      xit "re-renders the 'edit' template" do
        restaurantes_proximo = RestaurantesProximo.create! valid_attributes
        put :update, params: {id: restaurantes_proximo.to_param, restaurantes_proximo: invalid_attributes}, session: valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    xit "destroys the requested restaurantes_proximo" do
      restaurantes_proximo = RestaurantesProximo.create! valid_attributes
      expect {
        delete :destroy, params: {id: restaurantes_proximo.to_param}, session: valid_session
      }.to change(RestaurantesProximo, :count).by(-1)
    end

    xit "redirects to the restaurantes_proximos list" do
      restaurantes_proximo = RestaurantesProximo.create! valid_attributes
      delete :destroy, params: {id: restaurantes_proximo.to_param}, session: valid_session
      expect(response).to redirect_to(restaurantes_proximos_url)
    end
  end

end
