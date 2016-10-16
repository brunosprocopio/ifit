class PedidosHasPratosController < ApplicationController
  before_action :set_pedidos_has_prato, only: [:show, :edit, :update, :destroy]

  # GET /pedidos_has_pratos
  # GET /pedidos_has_pratos.json
  def index
    @pedidos_has_pratos = PedidosHasPrato.all
  end

  # GET /pedidos_has_pratos/1
  # GET /pedidos_has_pratos/1.json
  def show
  end

  # GET /pedidos_has_pratos/new
  def new
    @pedidos_has_prato = PedidosHasPrato.new
  end

  # GET /pedidos_has_pratos/1/edit
  def edit
  end

  # POST /pedidos_has_pratos
  # POST /pedidos_has_pratos.json
  def create
    @pedidos_has_prato = PedidosHasPrato.new(pedidos_has_prato_params)

    respond_to do |format|
      if @pedidos_has_prato.save
        format.html { redirect_to @pedidos_has_prato, notice: 'Pedidos has prato was successfully created.' }
        format.json { render :show, status: :created, location: @pedidos_has_prato }
      else
        format.html { render :new }
        format.json { render json: @pedidos_has_prato.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pedidos_has_pratos/1
  # PATCH/PUT /pedidos_has_pratos/1.json
  def update
    respond_to do |format|
      if @pedidos_has_prato.update(pedidos_has_prato_params)
        format.html { redirect_to @pedidos_has_prato, notice: 'Pedidos has prato was successfully updated.' }
        format.json { render :show, status: :ok, location: @pedidos_has_prato }
      else
        format.html { render :edit }
        format.json { render json: @pedidos_has_prato.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pedidos_has_pratos/1
  # DELETE /pedidos_has_pratos/1.json
  def destroy
    @pedidos_has_prato.destroy
    respond_to do |format|
      format.html { redirect_to pedidos_has_pratos_url, notice: 'Pedidos has prato was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pedidos_has_prato
      @pedidos_has_prato = PedidosHasPrato.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pedidos_has_prato_params
      params.require(:pedidos_has_prato).permit(:pedidos_id, :pratos_id)
    end
end
