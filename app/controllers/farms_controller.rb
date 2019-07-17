class FarmsController < ApplicationController

def new
    @farm = Farm.new
  end

  def create
    @farm = Farm.new(farm_params)
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
    params.require(:farm).permit(:name, :description, :address, :photo, :photo_cache)
  end
end
