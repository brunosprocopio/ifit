class DadosCartaosController < ApplicationController
  before_action :set_dados_cartao, only: [:show, :edit, :update, :destroy]

  # GET /dados_cartaos
  # GET /dados_cartaos.json
  def index
    @dados_cartaos = DadosCartao.all
  end

  # GET /dados_cartaos/1
  # GET /dados_cartaos/1.json
  def show
  end

  # GET /dados_cartaos/new
  def new
    @dados_cartao = DadosCartao.new
  end

  # GET /dados_cartaos/1/edit
  def edit
  end

  # POST /dados_cartaos
  # POST /dados_cartaos.json
  def create
    @dados_cartao = DadosCartao.new(dados_cartao_params)

    respond_to do |format|
      if @dados_cartao.save
        format.html { redirect_to @dados_cartao, notice: 'Dados cartao was successfully created.' }
        format.json { render :show, status: :created, location: @dados_cartao }
      else
        format.html { render :new }
        format.json { render json: @dados_cartao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dados_cartaos/1
  # PATCH/PUT /dados_cartaos/1.json
  def update
    respond_to do |format|
      if @dados_cartao.update(dados_cartao_params)
        format.html { redirect_to @dados_cartao, notice: 'Dados cartao was successfully updated.' }
        format.json { render :show, status: :ok, location: @dados_cartao }
      else
        format.html { render :edit }
        format.json { render json: @dados_cartao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dados_cartaos/1
  # DELETE /dados_cartaos/1.json
  def destroy
    @dados_cartao.destroy
    respond_to do |format|
      format.html { redirect_to dados_cartaos_url, notice: 'Dados cartao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dados_cartao
      @dados_cartao = DadosCartao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dados_cartao_params
      params.require(:dados_cartao).permit(:nome, :vencimento, :numero, :cod_seguranca_integer, :tipo)
    end
end
