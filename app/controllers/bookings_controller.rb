class BookingsController < ApplicationController

  def new
    @booking = Booking.new
  end

  def create
    @product = Product.find(params[:product_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.product = @product
    if @booking.save
      redirect_to dashboard_customer_path
    else
      render @product
    end
  end
  private

  def booking_params
    params.require(:booking).permit(:quantity_in_kg, :delivery_option, :user_id, :price_in_cents, :photo)
  end

end
