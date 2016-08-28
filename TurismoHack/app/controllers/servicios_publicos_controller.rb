class ServiciosPublicosController < ApplicationController
  before_action :set_servicios_publico, only: [:show, :edit, :update, :destroy]

  # GET /servicios_publicos
  # GET /servicios_publicos.json
  def index
    @servicios_publicos = ServiciosPublico.all
  end

  # GET /servicios_publicos/1
  # GET /servicios_publicos/1.json
  def show
  end

  # GET /servicios_publicos/new
  def new
    @servicios_publico = ServiciosPublico.new
  end

  # GET /servicios_publicos/1/edit
  def edit
  end

  # POST /servicios_publicos
  # POST /servicios_publicos.json
  def create
    @servicios_publico = ServiciosPublico.new(servicios_publico_params)

    respond_to do |format|
      if @servicios_publico.save
        format.html { redirect_to @servicios_publico, notice: 'Servicios publico was successfully created.' }
        format.json { render :show, status: :created, location: @servicios_publico }
      else
        format.html { render :new }
        format.json { render json: @servicios_publico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /servicios_publicos/1
  # PATCH/PUT /servicios_publicos/1.json
  def update
    respond_to do |format|
      if @servicios_publico.update(servicios_publico_params)
        format.html { redirect_to @servicios_publico, notice: 'Servicios publico was successfully updated.' }
        format.json { render :show, status: :ok, location: @servicios_publico }
      else
        format.html { render :edit }
        format.json { render json: @servicios_publico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /servicios_publicos/1
  # DELETE /servicios_publicos/1.json
  def destroy
    @servicios_publico.destroy
    respond_to do |format|
      format.html { redirect_to servicios_publicos_url, notice: 'Servicios publico was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_servicios_publico
      @servicios_publico = ServiciosPublico.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def servicios_publico_params
      params.require(:servicios_publico).permit(:nombre, :foto, :descripcion, :apertura, :clausura, :direccion, :contacto, :lunes, :martes, :miercoles, :jueves, :viernes, :sabado, :domingo)
    end
end
