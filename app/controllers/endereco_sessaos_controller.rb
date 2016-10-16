class EnderecoSessaosController < ApplicationController
  before_action :set_endereco_sessao, only: [:show, :edit, :update, :destroy]

  # GET /endereco_sessaos
  # GET /endereco_sessaos.json
  def index
    @endereco_sessaos = EnderecoSessao.all
  end

  # GET /endereco_sessaos/1
  # GET /endereco_sessaos/1.json
  def show
  end

  # GET /endereco_sessaos/new
  def new
    @endereco_sessao = EnderecoSessao.new
  end

  # GET /endereco_sessaos/1/edit
  def edit
  end

  # POST /endereco_sessaos
  # POST /endereco_sessaos.json
  def create
    @endereco_sessao = EnderecoSessao.new(endereco_sessao_params)

    respond_to do |format|
      if @endereco_sessao.save
        format.html { redirect_to @endereco_sessao, notice: 'Endereco sessao was successfully created.' }
        format.json { render :show, status: :created, location: @endereco_sessao }
      else
        format.html { render :new }
        format.json { render json: @endereco_sessao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /endereco_sessaos/1
  # PATCH/PUT /endereco_sessaos/1.json
  def update
    respond_to do |format|
      if @endereco_sessao.update(endereco_sessao_params)
        format.html { redirect_to @endereco_sessao, notice: 'Endereco sessao was successfully updated.' }
        format.json { render :show, status: :ok, location: @endereco_sessao }
      else
        format.html { render :edit }
        format.json { render json: @endereco_sessao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /endereco_sessaos/1
  # DELETE /endereco_sessaos/1.json
  def destroy
    @endereco_sessao.destroy
    respond_to do |format|
      format.html { redirect_to endereco_sessaos_url, notice: 'Endereco sessao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_endereco_sessao
      @endereco_sessao = EnderecoSessao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def endereco_sessao_params
      params.require(:endereco_sessao).permit(:cep, :pais, :estado, :cidade, :rua, :numero, :complemento, :sessao_id)
    end
end
