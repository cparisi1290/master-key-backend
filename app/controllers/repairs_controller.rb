class RepairsController < ApplicationController
  before_action :set_repair, only: [:show, :update, :destroy]

  # GET /repairs
  def index
    @repairs = Repair.all

    render json: @repairs
  end

  # GET /repairs/1
  def show
    render json: @repair
  end

  # POST /repairs
  def create
    @repair = Repair.new(repair_params)

    if @repair.save
      render json: @repair, status: :created, location: @repair
    else
      render json: @repair.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /repairs/1
  def update
    if @repair.update(repair_params)
      render json: @repair
    else
      render json: @repair.errors, status: :unprocessable_entity
    end
  end

  # DELETE /repairs/1
  def destroy
    @repair.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_repair
      @repair = Repair.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def repair_params
      params.require(:repair).permit(:room, :brokedn_item, :cost, :date_completed, :closed?, :property_id)
    end
end
