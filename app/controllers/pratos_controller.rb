class PratosController < ApplicationController
  before_action :set_prato, only: [:show, :edit, :update, :destroy]

  # GET /pratos
  # GET /pratos.json
  def index
    @pratos = Prato.all
  end

  # GET /pratos/1
  # GET /pratos/1.json
  def show
    if Pratos.find(params[:id]).tipo == 0
      redirect_to "pratos_montados/show/#{params[:id]}"
    else
      redirect_to "pratos_prontos/show/#{params[:id]}"
    end
  end

  def lista_pratos
    @pratos = Prato.all
    pratos1 = Prato.all
    pratos2 = Prato.all
    pratos3 = Prato.all
    pratos4 = Prato.all
    pratos5 = Prato.all
    pratos6 = Prato.all
    pratos7 = Prato.all
    pratos8 = Prato.all
    pratos9 = Prato.all
    pratos10 = Prato.all
    pratos11 = Prato.all
    pratos12 = Prato.all
    pratos13 = Prato.all
    pratos14 = Prato.all
    pratos15 = Prato.all

    if params[:alema] == true
      pratos1 = Prato.where("cozinha = 1")
    end

    if params[:arabe] == true
      pratos2 = Prato.where("cozinha = 2")
    end

    if params[:asiatica] == true
      pratos3 = Prato.where("cozinha = 3")
    end

    if params[:brasileira] == true
      pratos4 = Prato.where("cozinha = 4")
    end

    if params[:chinesa] == true
      pratos5 = Prato.where("cozinha = 5")
    end

    if params[:francesa] == true
      pratos6 = Prato.where("cozinha = 6")
    end

    if params[:indiana] == true
      pratos7 = Prato.where("cozinha = 7")
    end

    if params[:italiana] == true
      pratos8 = Prato.where("cozinha = 8")
    end

    if params[:japonesa] == true
      pratos9 = Prato.where("cozinha = 9")
    end

    if params[:mediterraneo] == true
      pratos10 = Prato.where("cozinha = 10")
    end

    if params[:mexicana] == true
      pratos11 = Prato.where("cozinha = 11")
    end

    if params[:portuguesa] == true
      pratos12 = Prato.where("cozinha = 12")
    end

    if params[:tailandesa] == true
      pratos13 = Prato.where("cozinha = 13")
    end

    if params[:prato_definido] == true
      pratos14 = Prato.where("tipo = 1")
    end

    if params[:prato_ndefinido] == true
      pratos15 = Prato.where("tipo == 0")
    end

    @pratos = pratos1 + pratos2 + pratos3 + pratos4 + pratos5 + pratos6 + pratos7 + pratos8 + pratos9 + pratos10 + pratos11 + pratos12 + pratos13
   # query = ''
    #if (params[:prato_definido] == true && params[:prato_ndefinido] == true) || (params[:prato_definido] == false && params[:prato_ndefinido] == false)
    #  query = "tipo == 0 OR tipo == 1"
   # elsif params[:definido] == false && params[:prato_ndefinido] == true
   #   query = "tipo == 1"
   # elsif params[:definido] == true && params[:prato_ndefinido] == false
    #  query = "tipo == 0"
    #end
    #@pratos = @pratos.joins(:pratos).where(query)


    render :action => :index
  end

  # GET /pratos/new
  def new
    @prato = Prato.new
  end

  # GET /pratos/1/edit
  def edit
  end

  # POST /pratos
  # POST /pratos.json
  def create
    @prato = Prato.new(prato_params)

    respond_to do |format|
      if @prato.save
        format.html { redirect_to @prato, notice: 'Prato was successfully created.' }
        format.json { render :show, status: :created, location: @prato }
      else
        format.html { render :new }
        format.json { render json: @prato.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pratos/1
  # PATCH/PUT /pratos/1.json
  def update
    respond_to do |format|
      if @prato.update(prato_params)
        format.html { redirect_to @prato, notice: 'Prato was successfully updated.' }
        format.json { render :show, status: :ok, location: @prato }
      else
        format.html { render :edit }
        format.json { render json: @prato.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pratos/1
  # DELETE /pratos/1.json
  def destroy
    @prato.destroy
    respond_to do |format|
      format.html { redirect_to pratos_url, notice: 'Prato was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prato
      @prato = Prato.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prato_params
      params.require(:prato).permit(:nome, :descricao, :cozinha, :tipo)
    end
end
