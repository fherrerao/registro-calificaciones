class TiposController < ApplicationController
  before_action :set_tipo, only: %i[ show update destroy ]

  # GET /tipos
  def index
    @tipos = Tipo.all

    render json: @tipos
  end

  # GET /tipos/1
  def show
    render json: @tipo
  end

  # POST /tipos
  def create
    @tipo = Tipo.new(tipo_params)

    if @tipo.save
      render json: @tipo, status: :created, location: @tipo
    else
      render json: @tipo.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tipos/1
  def update
    if @tipo.update(tipo_params)
      render json: @tipo
    else
      render json: @tipo.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tipos/1
  def destroy
    @tipo.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo
      @tipo = Tipo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tipo_params
      params.require(:tipo).permit(:descripcion)
    end
end
