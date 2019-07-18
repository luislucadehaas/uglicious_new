class CompaniesController < ApplicationController

def new
    @company = Company.new
  end

  def create
    @company = Company.new(company_params)
    @company.user = current_user
    if @company.save
       redirect_to dashboard_customer_path
    else
      render 'new'
    end
  end

 def edit
    @company = Company.find(params[:id])
  end

  def update
    @company = Company.find(params[:id])
    @company.update(company_params)
    redirect_to dashboard_customer_path
  end

  def destroy
    @company= Company.find(params[:id])
    @company.destroy
    redirect_to dashboard_customer_path
  end

  private

  def company_params
    params.require(:company).permit(:name, :description, :address)
  end
end
