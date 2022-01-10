class BluetoothsearchesController < ApplicationController
  before_action :set_bluetoothsearch, only: [:show, :update, :destroy]

  # GET /bluetoothsearches
  def index
    @bluetoothsearches = Bluetoothsearch.all

    render json: @bluetoothsearches
  end

  # GET /bluetoothsearches/1
  def show
    render json: @bluetoothsearch
  end

  # POST /bluetoothsearches
  def create
    @bluetoothsearch = Bluetoothsearch.new(bluetoothsearch_params)

    if @bluetoothsearch.save
      render json: @bluetoothsearch, status: :created, location: @bluetoothsearch
    else
      render json: @bluetoothsearch.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bluetoothsearches/1
  def update
    if @bluetoothsearch.update(bluetoothsearch_params)
      render json: @bluetoothsearch
    else
      render json: @bluetoothsearch.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bluetoothsearches/1
  def destroy
    @bluetoothsearch.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bluetoothsearch
      @bluetoothsearch = Bluetoothsearch.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def bluetoothsearch_params
      params.require(:bluetoothsearch).permit(:rfidCode)
    end
end
