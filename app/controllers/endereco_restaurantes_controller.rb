class EnderecoRestaurantesController < ApplicationController
  before_action :set_endereco_restaurante, only: [:show, :edit, :update, :destroy]

  # GET /endereco_restaurantes
  # GET /endereco_restaurantes.json
  def index
    @endereco_restaurantes = EnderecoRestaurante.all
  end

  # GET /endereco_restaurantes/1
  # GET /endereco_restaurantes/1.json
  def show
  end

  # GET /endereco_restaurantes/new
  def new
    @endereco_restaurante = EnderecoRestaurante.new
  end

  # GET /endereco_restaurantes/1/edit
  def edit
  end

  # POST /endereco_restaurantes
  # POST /endereco_restaurantes.json
  def create
    @endereco_restaurante = EnderecoRestaurante.new(endereco_restaurante_params)

    respond_to do |format|
      if @endereco_restaurante.save
        format.html { redirect_to @endereco_restaurante, notice: 'Endereco restaurante was successfully created.' }
        format.json { render :show, status: :created, location: @endereco_restaurante }
      else
        format.html { render :new }
        format.json { render json: @endereco_restaurante.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /endereco_restaurantes/1
  # PATCH/PUT /endereco_restaurantes/1.json
  def update
    respond_to do |format|
      if @endereco_restaurante.update(endereco_restaurante_params)
        format.html { redirect_to @endereco_restaurante, notice: 'Endereco restaurante was successfully updated.' }
        format.json { render :show, status: :ok, location: @endereco_restaurante }
      else
        format.html { render :edit }
        format.json { render json: @endereco_restaurante.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /endereco_restaurantes/1
  # DELETE /endereco_restaurantes/1.json
  def destroy
    @endereco_restaurante.destroy
    respond_to do |format|
      format.html { redirect_to endereco_restaurantes_url, notice: 'Endereco restaurante was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_endereco_restaurante
      @endereco_restaurante = EnderecoRestaurante.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def endereco_restaurante_params
      params.require(:endereco_restaurante).permit(:cep, :pais, :estado, :cidade, :rua, :numero, :complemento, :restaurante_id)
    end
end
