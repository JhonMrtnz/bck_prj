class AgregadosController < ApplicationController
  before_action :set_agregado, only: [:show, :edit, :update, :destroy]
   before_action :authenticate_user!

  # GET /agregados
  # GET /agregados.json
  def index
    @agregados = Agregado.all
  end

  # GET /agregados/1
  # GET /agregados/1.json
  def show
  end

  # GET /agregados/new
  def new
    @agregado = Agregado.new
  end

  # GET /agregados/1/edit
  def edit
  end

  # POST /agregados
  # POST /agregados.json
  def create
    @agregado = Agregado.new(agregado_params)

    respond_to do |format|
      if @agregado.save
        format.html { redirect_to @agregado, notice: 'Agregado was successfully created.' }
        format.json { render :show, status: :created, location: @agregado }
      else
        format.html { render :new }
        format.json { render json: @agregado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /agregados/1
  # PATCH/PUT /agregados/1.json
  def update
    respond_to do |format|
      if @agregado.update(agregado_params)
        format.html { redirect_to @agregado, notice: 'Agregado was successfully updated.' }
        format.json { render :show, status: :ok, location: @agregado }
      else
        format.html { render :edit }
        format.json { render json: @agregado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /agregados/1
  # DELETE /agregados/1.json
  def destroy
    @agregado.destroy
    respond_to do |format|
      format.html { redirect_to agregados_url, notice: 'Agregado was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agregado
      @agregado = Agregado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def agregado_params
      params.require(:agregado).permit(:descripcion)
    end
end
