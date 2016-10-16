class AlimentoPrecosController < ApplicationController
  before_action :set_alimento_preco, only: [:show, :edit, :update, :destroy]

  # GET /alimento_precos
  # GET /alimento_precos.json
  def index
    @alimento_precos = AlimentoPreco.all
  end

  # GET /alimento_precos/1
  # GET /alimento_precos/1.json
  def show
  end

  # GET /alimento_precos/new
  def new
    @alimento_preco = AlimentoPreco.new
  end

  # GET /alimento_precos/1/edit
  def edit
  end

  # POST /alimento_precos
  # POST /alimento_precos.json
  def create
    @alimento_preco = AlimentoPreco.new(alimento_preco_params)

    respond_to do |format|
      if @alimento_preco.save
        format.html { redirect_to @alimento_preco, notice: 'Alimento preco was successfully created.' }
        format.json { render :show, status: :created, location: @alimento_preco }
      else
        format.html { render :new }
        format.json { render json: @alimento_preco.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alimento_precos/1
  # PATCH/PUT /alimento_precos/1.json
  def update
    respond_to do |format|
      if @alimento_preco.update(alimento_preco_params)
        format.html { redirect_to @alimento_preco, notice: 'Alimento preco was successfully updated.' }
        format.json { render :show, status: :ok, location: @alimento_preco }
      else
        format.html { render :edit }
        format.json { render json: @alimento_preco.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alimento_precos/1
  # DELETE /alimento_precos/1.json
  def destroy
    @alimento_preco.destroy
    respond_to do |format|
      format.html { redirect_to alimento_precos_url, notice: 'Alimento preco was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alimento_preco
      @alimento_preco = AlimentoPreco.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def alimento_preco_params
      params.require(:alimento_preco).permit(:nome, :preco, :prato_montado_id)
    end
end
