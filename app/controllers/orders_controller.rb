class OrdersController < ApplicationController
  before_action :initialize_cart_items, only: [ :create ]

  def index
    @orders = current_user.orders
  end

  def create
    # Orders are from current_user
    @order = Order.new(user:current_user)
    @order.added_to_cart_items << @added_to_cart_items
    if @order.save
      clear_cart
      redirect_to orders_path
      flash[:notice] = "Order created"
    else
      redirect_to "/cart"
      flash[:notice] = "Could not create order"
    end
  end

  private

  def initialize_cart_items
    @added_to_cart_items = session[:cart].map do |id|
      AddedToCartItem.find(id)
    end
  end
  def clear_cart
    session[:cart] = []
  end

end
