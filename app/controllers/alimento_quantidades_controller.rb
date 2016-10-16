class AlimentoQuantidadesController < ApplicationController
  before_action :set_alimento_quantidade, only: [:show, :edit, :update, :destroy]

  # GET /alimento_quantidades
  # GET /alimento_quantidades.json
  def index
    @alimento_quantidades = AlimentoQuantidade.all
  end

  # GET /alimento_quantidades/1
  # GET /alimento_quantidades/1.json
  def show
  end

  # GET /alimento_quantidades/new
  def new
    @alimento_quantidade = AlimentoQuantidade.new
  end

  # GET /alimento_quantidades/1/edit
  def edit
  end

  # POST /alimento_quantidades
  # POST /alimento_quantidades.json
  def create
    @alimento_quantidade = AlimentoQuantidade.new(alimento_quantidade_params)

    respond_to do |format|
      if @alimento_quantidade.save
        format.html { redirect_to @alimento_quantidade, notice: 'Alimento quantidade was successfully created.' }
        format.json { render :show, status: :created, location: @alimento_quantidade }
      else
        format.html { render :new }
        format.json { render json: @alimento_quantidade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alimento_quantidades/1
  # PATCH/PUT /alimento_quantidades/1.json
  def update
    respond_to do |format|
      if @alimento_quantidade.update(alimento_quantidade_params)
        format.html { redirect_to @alimento_quantidade, notice: 'Alimento quantidade was successfully updated.' }
        format.json { render :show, status: :ok, location: @alimento_quantidade }
      else
        format.html { render :edit }
        format.json { render json: @alimento_quantidade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alimento_quantidades/1
  # DELETE /alimento_quantidades/1.json
  def destroy
    @alimento_quantidade.destroy
    respond_to do |format|
      format.html { redirect_to alimento_quantidades_url, notice: 'Alimento quantidade was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alimento_quantidade
      @alimento_quantidade = AlimentoQuantidade.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def alimento_quantidade_params
      params.require(:alimento_quantidade).permit(:nome, :quantidade, :prato_pronto_id)
    end
end
