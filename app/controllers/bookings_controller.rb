class BookingsController < ApplicationController

  def new
    @booking = Booking.new
  end

  def create
    @product = Product.find(params[:product_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.product = @product
    @booking.price_in_cents = @product.price_in_cents
    @booking.address = current_user.companies.first.address
    if @booking.save
      @product.quantity_in_kg -= @booking.quantity_in_kg
      redirect_to dashboard_customer_path
    else
      render @product
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:quantity_in_kg, :delivery_option)
  end

end
