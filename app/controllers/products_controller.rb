class ProductsController < ApplicationController

  def index
    if params[:search].present? && params["search"]["query"] == ""
      @products = Product.all
    elsif params[:search].present?
      sql_query = " \
      products.title @@ :search \
      OR products.description @@ :search \
      "
      @products = Product.where(sql_query, search: "%#{params["search"]["query"]}%")
    else
      @products = Product.all
    end
  end

  private

  def product_params

    params.require(:product).permit(:title, :photo, :description, :price_in_cents, :quantity_in_kg, :min_quantity_to_order, :available_from, :available_until
    )

  end
end
