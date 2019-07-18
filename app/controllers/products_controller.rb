class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :show, :index]


  def index
    if params[:search].present? && params["search"]["query"] == ""
      @products = Product.all
    elsif params[:search].present?
      sql_query = " \
      products.title @@ :search \
      OR subgroups.name @@ :search \
      "
      @products = Product.joins(:subgroup).where(sql_query, search: "%#{params["search"]["query"]}%")
    elsif params[:filter]
      subgroup = Subgroup.where(name: params[:filter])
      @products = Product.all.where(subgroup: subgroup)
    else
      @products = Product.all
    end
  end

  def show
    @product = Product.find(params[:id])
    @booking = Booking.new
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.farm = current_user.farm
    if @product.save
     redirect_to dashboard_farmer_path
   else
    render 'new'
  end
end

def edit
  @product = Product.find(params[:id])
end

def update
  @product = Product.find(params[:id])
  @product.update(product_params)
  redirect_to dashboard_farmer_path
end

def destroy
  @product = Product.find(params[:id])
  @product.destroy
  redirect_to dashboard_farmer_path
end

private

def product_params
  params.require(:product).permit(:title, :description, :price_in_cents, :quantity_in_kg, :min_quantity_to_order, :available_from, :available_until, :photo, :photo_cache, :subgroup_id)
end

end
