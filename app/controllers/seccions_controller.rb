class SeccionsController < ApplicationController
  before_action :set_seccion, only: %i[ show update destroy ]

  # GET /seccions
  def index
    @seccions = Seccion.all

    render json: @seccions
  end

  # GET /seccions/1
  def show
    render json: @seccion
  end

  # POST /seccions
  def create
    @seccion = Seccion.new(seccion_params)

    if @seccion.save
      render json: @seccion, status: :created, location: @seccion
    else
      render json: @seccion.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /seccions/1
  def update
    if @seccion.update(seccion_params)
      render json: @seccion
    else
      render json: @seccion.errors, status: :unprocessable_entity
    end
  end

  # DELETE /seccions/1
  def destroy
    @seccion.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seccion
      @seccion = Seccion.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def seccion_params
      params.require(:seccion).permit(:descripcion, :user_id)
    end
end
