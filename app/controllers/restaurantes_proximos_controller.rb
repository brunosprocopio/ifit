class RestaurantesProximosController < ApplicationController
  before_action :set_restaurantes_proximo, only: [:show, :edit, :update, :destroy]

  # GET /restaurantes_proximos
  # GET /restaurantes_proximos.json
  def index
    @restaurantes_proximos = RestaurantesProximo.all
  end

  # GET /restaurantes_proximos/1
  # GET /restaurantes_proximos/1.json
  def show
  end

  # GET /restaurantes_proximos/new
  def new
    @restaurantes_proximo = RestaurantesProximo.new
  end

  # GET /restaurantes_proximos/1/edit
  def edit
  end

  # POST /restaurantes_proximos
  # POST /restaurantes_proximos.json
  def create
    @restaurantes_proximo = RestaurantesProximo.new(restaurantes_proximo_params)

    respond_to do |format|
      if @restaurantes_proximo.save
        format.html { redirect_to @restaurantes_proximo, notice: 'Restaurantes proximo was successfully created.' }
        format.json { render :show, status: :created, location: @restaurantes_proximo }
      else
        format.html { render :new }
        format.json { render json: @restaurantes_proximo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /restaurantes_proximos/1
  # PATCH/PUT /restaurantes_proximos/1.json
  def update
    respond_to do |format|
      if @restaurantes_proximo.update(restaurantes_proximo_params)
        format.html { redirect_to @restaurantes_proximo, notice: 'Restaurantes proximo was successfully updated.' }
        format.json { render :show, status: :ok, location: @restaurantes_proximo }
      else
        format.html { render :edit }
        format.json { render json: @restaurantes_proximo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restaurantes_proximos/1
  # DELETE /restaurantes_proximos/1.json
  def destroy
    @restaurantes_proximo.destroy
    respond_to do |format|
      format.html { redirect_to restaurantes_proximos_url, notice: 'Restaurantes proximo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurantes_proximo
      @restaurantes_proximo = RestaurantesProximo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def restaurantes_proximo_params
      params.require(:restaurantes_proximo).permit(:distancia, :sessao_id, :restaurante_id)
    end
end
