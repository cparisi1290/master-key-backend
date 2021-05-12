class Api::V1::PropertiesController < ApplicationController
  before_action :set_property, only: [:show, :update, :destroy]

  # GET /properties
  def index
    if logged_in?
      @properties = current_user.properties

      properties_json = PropertySerializer.new(@properties).serialized_json
      render json: properties_json
    else
      render json:{
        error: "Must be logged in to view properties"
      }

    end

  end

  # GET /properties/1
  def show
    property_json = PropertySerializer.new(@property).serialized_json
    render json: property_json
  end

  # POST /properties
  def create
    @property = current_user.properties.new(property_params)

    if @property.save
      render json: PropertySerializer.new(@property), status: :created
    else
      error_response = {
        error: @property.errors.full_messages.to_sentence
      }
      render json: error_response, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /properties/1
  def update
    if @property.update(property_params)
      render json: PropertySerializer.new(@property), status: :ok
    else
      error_response = {
        error: @property.errors.full_messages.to_sentence
      }
      render json: error_response, status: :unprocessable_entity
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
      params.require(:property).permit(:name, :address, :city, :state, :zip, :bedrooms, :bathrooms, :image, :occupied?, :pets_allowed?, :rent_amount)
    end
end
