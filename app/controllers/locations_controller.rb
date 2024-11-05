class LocationsController < ApplicationController
  def index
    @locations = Location.all
  end

  def show
    @location = Location.find_by(zip: params[:zip])
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.new(location_params)

    if @location.save
      redirect_to locations_path
    else
      render :new
    end
  end

  def check_zip_code
    @location = Location.find_by(zip: params[:zip])
    if @location
      render json: { status: 'found', location: @location }
    else
      render json: { status: 'not_found' }, status: :not_found
    end
  end

  private
  def location_params
    params.require(:location).permit(:address, :city, :state, :zip, :latitude, :longitude)
  end
end
