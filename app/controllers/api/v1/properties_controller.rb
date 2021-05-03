class Api::V1::PropertiesController < ApplicationController
  before_action :set_property, only: [:show, :update, :destroy]

  # GET /properties
  def index
    @properties = Property.all

    properties_json = PropertySerializer.new(@properties).serialized_json
    render json: properties_json
  end

  # GET /properties/1
  def show
    property_json = PropertySerializer.new(@property).serialized_json
    render json: property_json
  end

  # POST /properties
  def create
    @property = Property.new(property_params)

    if @property.save
      render json: @property, status: :created, location: @property
    else
      render json: @property.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /properties/1
  def update
    if @property.update(property_params)
      render json: @property
    else
      render json: @property.errors, status: :unprocessable_entity
    end
  end

  # DELETE /properties/1
  def destroy
    @property.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property
      @property = Property.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def property_params
      params.require(:property).permit(:name, :address, :city, :state, :zip, :bedrooms, :bathrooms, :image, :occupied?, :pets_allowed?, :rent_amount, :user_id)
    end
end
