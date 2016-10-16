class PagamentoAceitosController < ApplicationController
  before_action :set_pagamento_aceito, only: [:show, :edit, :update, :destroy]

  # GET /pagamento_aceitos
  # GET /pagamento_aceitos.json
  def index
    @pagamento_aceitos = PagamentoAceito.all
  end

  # GET /pagamento_aceitos/1
  # GET /pagamento_aceitos/1.json
  def show
  end

  # GET /pagamento_aceitos/new
  def new
    @pagamento_aceito = PagamentoAceito.new
  end

  # GET /pagamento_aceitos/1/edit
  def edit
  end

  # POST /pagamento_aceitos
  # POST /pagamento_aceitos.json
  def create
    @pagamento_aceito = PagamentoAceito.new(pagamento_aceito_params)

    respond_to do |format|
      if @pagamento_aceito.save
        format.html { redirect_to @pagamento_aceito, notice: 'Pagamento aceito was successfully created.' }
        format.json { render :show, status: :created, location: @pagamento_aceito }
      else
        format.html { render :new }
        format.json { render json: @pagamento_aceito.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pagamento_aceitos/1
  # PATCH/PUT /pagamento_aceitos/1.json
  def update
    respond_to do |format|
      if @pagamento_aceito.update(pagamento_aceito_params)
        format.html { redirect_to @pagamento_aceito, notice: 'Pagamento aceito was successfully updated.' }
        format.json { render :show, status: :ok, location: @pagamento_aceito }
      else
        format.html { render :edit }
        format.json { render json: @pagamento_aceito.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pagamento_aceitos/1
  # DELETE /pagamento_aceitos/1.json
  def destroy
    @pagamento_aceito.destroy
    respond_to do |format|
      format.html { redirect_to pagamento_aceitos_url, notice: 'Pagamento aceito was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pagamento_aceito
      @pagamento_aceito = PagamentoAceito.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pagamento_aceito_params
      params.require(:pagamento_aceito).permit(:cheque, :credito-amer-expre, :credito-diners, :credito-goodcard, :credito-hipercard, :credito-mastercard, :credito-verdecard, :credito-visa, :credito-banricompras, :dinheiro, :debito-banricompras, :debito-bo, :debito-mastercard, :debito-visa, :vale-alelo, :vale-sodexo, :vale-ticket, :vale-valecard, :vale-verocard, :vale-srsmart, :references)
    end
end
