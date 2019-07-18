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

  def log_out_farmer
    sign_out
    redirect_to new_user_session_path
  end

end
