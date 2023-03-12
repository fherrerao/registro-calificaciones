class CalificacionsController < ApplicationController
  before_action :set_calificacion, only: %i[ show update destroy ]

  # GET /calificacions
  def index
    @calificacions = Calificacion.all

    render json: @calificacions
  end

  # GET /calificacions/1
  def show
    render json: @calificacion
  end

  # POST /calificacions
  def create
    @calificacion = Calificacion.new(calificacion_params)

    if @calificacion.save
      render json: @calificacion, status: :created, location: @calificacion
    else
      render json: @calificacion.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /calificacions/1
  def update
    if @calificacion.update(calificacion_params)
      render json: @calificacion
    else
      render json: @calificacion.errors, status: :unprocessable_entity
    end
  end

  # DELETE /calificacions/1
  def destroy
    @calificacion.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_calificacion
      @calificacion = Calificacion.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def calificacion_params
      params.require(:calificacion).permit(:bimestre, :calificacion, :valorObtenido, :user_id, :tipo_id, :tipoPrueba_id, :anio_id)
    end
end
