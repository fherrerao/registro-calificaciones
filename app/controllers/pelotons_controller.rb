class PelotonsController < ApplicationController
  before_action :set_peloton, only: %i[ show update destroy ]

  # GET /pelotons
  def index
    @pelotons = Peloton.all

    render json: @pelotons
  end

  # GET /pelotons/1
  def show
    render json: @peloton
  end

  # POST /pelotons
  def create
    @peloton = Peloton.new(peloton_params)

    if @peloton.save
      render json: @peloton, status: :created, location: @peloton
    else
      render json: @peloton.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pelotons/1
  def update
    if @peloton.update(peloton_params)
      render json: @peloton
    else
      render json: @peloton.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pelotons/1
  def destroy
    @peloton.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_peloton
      @peloton = Peloton.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def peloton_params
      params.require(:peloton).permit(:descripcion, :user_id)
    end
end
