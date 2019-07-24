class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :show, :index]

  def home
    @role = current_user&.role
    products = Product.all
    @products = products.sample(4)
  end

  def dashboard_farmer
    @role = current_user&.role
    @farm = current_user.farm
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

end
