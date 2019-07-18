class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :show, :index]

  def home
    @role = current_user&.role
  end

  def dashboard_farmer
    @role = current_user&.role
  end

  def dashboard_customer
    @role = current_user&.role
  end

end
