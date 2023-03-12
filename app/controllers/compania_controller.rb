class CompaniaController < ApplicationController
  before_action :set_companium, only: %i[ show update destroy ]

  # GET /compania
  def index
    @compania = Companium.all

    render json: @compania
  end

  # GET /compania/1
  def show
    render json: @companium
  end

  # POST /compania
  def create
    @companium = Companium.new(companium_params)

    if @companium.save
      render json: @companium, status: :created, location: @companium
    else
      render json: @companium.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /compania/1
  def update
    if @companium.update(companium_params)
      render json: @companium
    else
      render json: @companium.errors, status: :unprocessable_entity
    end
  end

  # DELETE /compania/1
  def destroy
    @companium.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_companium
      @companium = Companium.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def companium_params
      params.require(:companium).permit(:descripcion, :user_id)
    end
end
