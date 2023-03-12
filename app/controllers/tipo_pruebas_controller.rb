class TipoPruebasController < ApplicationController
  before_action :set_tipo_prueba, only: %i[ show update destroy ]

  # GET /tipo_pruebas
  def index
    @tipo_pruebas = TipoPrueba.all

    render json: @tipo_pruebas
  end

  # GET /tipo_pruebas/1
  def show
    render json: @tipo_prueba
  end

  # POST /tipo_pruebas
  def create
    @tipo_prueba = TipoPrueba.new(tipo_prueba_params)

    if @tipo_prueba.save
      render json: @tipo_prueba, status: :created, location: @tipo_prueba
    else
      render json: @tipo_prueba.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tipo_pruebas/1
  def update
    if @tipo_prueba.update(tipo_prueba_params)
      render json: @tipo_prueba
    else
      render json: @tipo_prueba.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tipo_pruebas/1
  def destroy
    @tipo_prueba.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_prueba
      @tipo_prueba = TipoPrueba.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tipo_prueba_params
      params.require(:tipo_prueba).permit(:desTipoPrueba, :generPrueba)
    end
end
