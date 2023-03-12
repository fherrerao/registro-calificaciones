class AniosController < ApplicationController
  before_action :set_anio, only: %i[ show update destroy ]

  # GET /anios
  def index
    @anios = Anio.all

    render json: @anios
  end

  # GET /anios/1
  def show
    render json: @anio
  end

  # POST /anios
  def create
    @anio = Anio.new(anio_params)

    if @anio.save
      render json: @anio, status: :created, location: @anio
    else
      render json: @anio.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /anios/1
  def update
    if @anio.update(anio_params)
      render json: @anio
    else
      render json: @anio.errors, status: :unprocessable_entity
    end
  end

  # DELETE /anios/1
  def destroy
    @anio.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_anio
      @anio = Anio.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def anio_params
      params.require(:anio).permit(:descripcion, :notaMinima)
    end
end
