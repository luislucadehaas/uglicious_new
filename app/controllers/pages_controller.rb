class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :show]

  def home
    @role = current_user&.role
  end

  def dashboard_farmer
  end

  def dashboard_customer
  end

  end


