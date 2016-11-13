class RestaurantesProximosController < ApplicationController
  before_action :set_restaurantes_proximo, only: [:show, :edit, :update, :destroy]

  # GET /restaurantes_proximos
  # GET /restaurantes_proximos.json
  def index
    @restaurantes_proximos = Array.new
    @found_foods = Array.new

    if params[:search]

      restaurants = Array.new

      params[:search].split().each do |tag|
        Tag.where(nome: tag).pluck(:prato_id).each() do |food_id|
          Prato.where(id: food_id).pluck(:id, :restaurante_id).each do |food|
            @found_foods << Prato.find(food[0])

            unless restaurants.include?(food[1])
              restaurants << food[1]
            end
          end
        end
      end

      @restaurantes_proximos = RestaurantesProximo.where("restaurante_id IN (?)", restaurants)

      logger.debug "PRATOS ENCONTRADOS: " << @found_foods.to_s
    end
  end

  def lista_rest
    @found_foods = Array.new
    @restaurantes_proximos = RestaurantesProximo.all
    @restaurantes_proximos = @restaurantes_proximos.joins(:restaurante).where("@restaurantes_proximos.restaurante_id = restaurantes.id AND dinheiro = ? OR cartao_credito = ? OR cartao_debito = ?", params[:dinheiro], params[:cartao_credito], params[:cartao_debito])
    render :action => :index
  end

  # GET /restaurantes_proximos/1
  # GET /restaurantes_proximos/1.json
  def show
    redirect_to "/restaurantes/show/#{params[:id]}"
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
    #params.require(:restaurantes_proximo).permit(:distancia, :sessao_id, :restaurante_id)
  end
end
