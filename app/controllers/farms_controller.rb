class FarmsController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index]


  def index
    @markers = Farm.all.map do |farm|
      {
        lat: farm.latitude,
        lng: farm.longitude,
        infoWindow: render_to_string(partial: "infowindow", locals: { farm: farm }),
        image_url: helpers.asset_url('https://res.cloudinary.com/dc875ky15/image/upload/v1563869999/marker_wz5vh9.png')
      }
    end
    if params[:filter]
      farms = Farm.where(name: params[:filter])
      @products = Product.all.where(farm: farms)
    else
      @products = Product.all
    end

end

def find
      if params[:filter]
      farms = Farm.where(name: params[:filter])
      @products = Product.all.where(farm: farms)
    else
      @products = Product.all
    end
  respond_to do |format|
      format.js {render layout: false} # Add this line to you respond_to block
    end
end

def new
  @farm = Farm.new
end

def create
  @farm = Farm.new(farm_params)
  @farm.user = current_user
  if @farm.save
   redirect_to dashboard_farmer_path
 else
  render 'new'
end
end

def edit
  @farm = Farm.find(params[:id])
end

def update
  @farm = Farm.find(params[:id])
  @farm.update(farm_params)
  redirect_to dashboard_farmer_path
end

def destroy
  @farm = Farm.find(params[:id])
  @farm.destroy
  redirect_to dashboard_farmer_path
end

private

def farm_params
  params.require(:farm).permit(:name, :description, :address, :photo, :photo_cache, :latitude, :longitude)
end
end

