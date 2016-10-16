class PratoMontadosController < ApplicationController
  before_action :set_prato_montado, only: [:show, :edit, :update, :destroy]

  # GET /prato_montados
  # GET /prato_montados.json
  def index
    @prato_montados = PratoMontado.all
  end

  # GET /prato_montados/1
  # GET /prato_montados/1.json
  def show
  end

  # GET /prato_montados/new
  def new
    @prato_montado = PratoMontado.new
  end

  # GET /prato_montados/1/edit
  def edit
  end

  # POST /prato_montados
  # POST /prato_montados.json
  def create
    @prato_montado = PratoMontado.new(prato_montado_params)

    respond_to do |format|
      if @prato_montado.save
        format.html { redirect_to @prato_montado, notice: 'Prato montado was successfully created.' }
        format.json { render :show, status: :created, location: @prato_montado }
      else
        format.html { render :new }
        format.json { render json: @prato_montado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prato_montados/1
  # PATCH/PUT /prato_montados/1.json
  def update
    respond_to do |format|
      if @prato_montado.update(prato_montado_params)
        format.html { redirect_to @prato_montado, notice: 'Prato montado was successfully updated.' }
        format.json { render :show, status: :ok, location: @prato_montado }
      else
        format.html { render :edit }
        format.json { render json: @prato_montado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prato_montados/1
  # DELETE /prato_montados/1.json
  def destroy
    @prato_montado.destroy
    respond_to do |format|
      format.html { redirect_to prato_montados_url, notice: 'Prato montado was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prato_montado
      @prato_montado = PratoMontado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prato_montado_params
      params.require(:prato_montado).permit(:references)
    end
end
