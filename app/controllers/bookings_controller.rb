class BookingsController < ApplicationController

  def new
    @booking = Booking.new
  end

  def update
    sleep(1)
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to farmer_orders_path
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

    else
      render @product
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:quantity_in_kg, :delivery_option, :status)
  end

end
