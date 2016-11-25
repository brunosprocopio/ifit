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
    @pratos = Prato.all
    if @pratos.find(params[:id]).tipo == 0
      redirect_to "/prato_montados/#{params[:id]}"
    else
      redirect_to "/prato_prontos/#{params[:id]}"
    end
  end

  def lista_pratos
    pratos1 = Prato.where("alema = ? OR arabe = ? OR asiatica = ? OR brasileira = ? OR chinesa = ? OR francesa = ? OR indiana = ? OR italiana = ? OR japonesa = ? OR mediterraneo = ? OR mexicana = ? OR portuguesa = ? OR tailandesa = ?", params[:alema], params[:arabe], params[:asiatica], params[:brasileira], params[:chinesa], params[:francesa], params[:indiana], params[:italiana], params[:japonesa], params[:mediterraneo], params[:mexicana], params[:portuguesa], params[:tailandesa])
    pratos1 = Prato.where("tipo = ? AND (alema = ? OR arabe = ? OR asiatica = ? OR brasileira = ? OR chinesa = ? OR francesa = ? OR indiana = ? OR italiana = ? OR japonesa = ? OR mediterraneo = ? OR mexicana = ? OR portuguesa = ? OR tailandesa = ?)", 0, params[:alema], params[:arabe], params[:asiatica], params[:brasileira], params[:chinesa], params[:francesa], params[:indiana], params[:italiana], params[:japonesa], params[:mediterraneo], params[:mexicana], params[:portuguesa], params[:tailandesa]) if params[:prato_definido]
    pratos2 = Prato.where("alema = ? OR arabe = ? OR asiatica = ? OR brasileira = ? OR chinesa = ? OR francesa = ? OR indiana = ? OR italiana = ? OR japonesa = ? OR mediterraneo = ? OR mexicana = ? OR portuguesa = ? OR tailandesa = ?", params[:alema], params[:arabe], params[:asiatica], params[:brasileira], params[:chinesa], params[:francesa], params[:indiana], params[:italiana], params[:japonesa], params[:mediterraneo], params[:mexicana], params[:portuguesa], params[:tailandesa])
    pratos2 = Prato.where("tipo = ? AND (alema = ? OR arabe = ? OR asiatica = ? OR brasileira = ? OR chinesa = ? OR francesa = ? OR indiana = ? OR italiana = ? OR japonesa = ? OR mediterraneo = ? OR mexicana = ? OR portuguesa = ? OR tailandesa = ?)", 1, params[:alema], params[:arabe], params[:asiatica], params[:brasileira], params[:chinesa], params[:francesa], params[:indiana], params[:italiana], params[:japonesa], params[:mediterraneo], params[:mexicana], params[:portuguesa], params[:tailandesa]) if params[:prato_ndefinido]

    @pratos = pratos1.merge(pratos2)

    if (params[:prato_definido] || params[:prato_ndefinido]) && (!params[:alema] && !params[:arabe] && !params[:asiatica] && !params[:brasileira] && !params[:chinesa] && !params[:francesa] && !params[:indiana] && !params[:italiana] && !params[:japonesa] && !params[:mediterranea] && !params[:mexicana] && !params[:portuguesa] && !params[:tailandesa])
      if(params[:prato_definido])
        @pratos  = Prato.where("tipo = 0")
      end
      if(params[:prato_ndefinido])
        @pratos  = Prato.where("tipo = 1")
      end
      if(params[:prato_ndefinido] && params[:prato_definido])
      @pratos = Prato.where("tipo = 1 OR tipo = 0")
      end
     end
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
