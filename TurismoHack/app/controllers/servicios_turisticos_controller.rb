class ServiciosTuristicosController < ApplicationController
  before_action :set_servicios_turistico, only: [:show, :edit, :update, :destroy]

  # GET /servicios_turisticos
  # GET /servicios_turisticos.json
  def index
    @servicios_turisticos = ServiciosTuristico.all
  end

  # GET /servicios_turisticos/1
  # GET /servicios_turisticos/1.json
  def show
  end

  # GET /servicios_turisticos/new
  def new
    @servicios_turistico = ServiciosTuristico.new
  end

  # GET /servicios_turisticos/1/edit
  def edit
  end

  # POST /servicios_turisticos
  # POST /servicios_turisticos.json
  def create
    @servicios_turistico = ServiciosTuristico.new(servicios_turistico_params)

    respond_to do |format|
      if @servicios_turistico.save
        format.html { redirect_to @servicios_turistico, notice: 'Servicios turistico was successfully created.' }
        format.json { render :show, status: :created, location: @servicios_turistico }
      else
        format.html { render :new }
        format.json { render json: @servicios_turistico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /servicios_turisticos/1
  # PATCH/PUT /servicios_turisticos/1.json
  def update
    respond_to do |format|
      if @servicios_turistico.update(servicios_turistico_params)
        format.html { redirect_to @servicios_turistico, notice: 'Servicios turistico was successfully updated.' }
        format.json { render :show, status: :ok, location: @servicios_turistico }
      else
        format.html { render :edit }
        format.json { render json: @servicios_turistico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /servicios_turisticos/1
  # DELETE /servicios_turisticos/1.json
  def destroy
    @servicios_turistico.destroy
    respond_to do |format|
      format.html { redirect_to servicios_turisticos_url, notice: 'Servicios turistico was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_servicios_turistico
      @servicios_turistico = ServiciosTuristico.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def servicios_turistico_params
      params.require(:servicios_turistico).permit(:nombre, :foto, :descripcion, :apertura, :clausura, :direccion, :contacto, :lunes, :martes, :miercoles, :jueves, :viernes, :sabado, :domingo)
    end
end
