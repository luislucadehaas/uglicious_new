require 'json'
require 'open-uri'

class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :show, :index]

  def home
    @role = current_user&.role
    products = Product.all
    @products = products.last(4)
  end

  def dashboard_farmer
    @role = current_user&.role
    @farm = current_user.farm
    weather
    # raise
  end

  def dashboard_customer
    @role = current_user&.role
    @company = current_user.companies
  end

  def farmer_orders
    @role = current_user&.role
    @farm = current_user.farm
  end


  def log_out_farmer
    sign_out
    redirect_to new_user_session_path
  end

  def after_sign_in_path_for(resource_or_scope)
    stored_location_for(resource_or_scope) || super
  end

  private

  def weather
    json = JSON.parse(open("http://api.openweathermap.org/data/2.5/weather?q=Berlin&APPID=9ce23fc11d4098888ae79f02a4e12ab0").read)
    @temp = json["main"]["temp"].round / 10
    @humidity = json["main"]["humidity"]
    @description = json["weather"][0]["description"]
    @speed = json["wind"]["speed"]
    # for the future you can use this (https://openweathermap.org/weather-conditions) to change the icon of the weather
  end

end
