class PratoProntosController < ApplicationController
  before_action :set_prato_pronto, only: [:show, :edit, :update, :destroy]

  # GET /prato_prontos
  # GET /prato_prontos.json
  def index
    @prato_prontos = PratoPronto.all
  end

  # GET /prato_prontos/1
  # GET /prato_prontos/1.json
  def show
  end

  # GET /prato_prontos/new
  def new
    @prato_pronto = PratoPronto.new
  end

  # GET /prato_prontos/1/edit
  def edit
  end

  # POST /prato_prontos
  # POST /prato_prontos.json
  def create
    @prato_pronto = PratoPronto.new(prato_pronto_params)

    respond_to do |format|
      if @prato_pronto.save
        format.html { redirect_to @prato_pronto, notice: 'Prato pronto was successfully created.' }
        format.json { render :show, status: :created, location: @prato_pronto }
      else
        format.html { render :new }
        format.json { render json: @prato_pronto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prato_prontos/1
  # PATCH/PUT /prato_prontos/1.json
  def update
    respond_to do |format|
      if @prato_pronto.update(prato_pronto_params)
        format.html { redirect_to @prato_pronto, notice: 'Prato pronto was successfully updated.' }
        format.json { render :show, status: :ok, location: @prato_pronto }
      else
        format.html { render :edit }
        format.json { render json: @prato_pronto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prato_prontos/1
  # DELETE /prato_prontos/1.json
  def destroy
    @prato_pronto.destroy
    respond_to do |format|
      format.html { redirect_to prato_prontos_url, notice: 'Prato pronto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prato_pronto
      @prato_pronto = PratoPronto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prato_pronto_params
      params.require(:prato_pronto).permit(:preco, :prato_id)
    end
end
