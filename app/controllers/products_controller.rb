class ProductsController < ApplicationController
  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.user = current_user
    if @product.save
       redirect_to dashboard_farmer_path
    else
      render 'new'
    end
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def index
  end

  def show
  end

  private

  def product_params
    params.require(:product).permit(:title, :description, :price_in_cents, :quantity_in_kg, :min_quantity_to_order, :available_from, :available_until, :photo)
  end

end
