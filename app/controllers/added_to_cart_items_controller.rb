class AddedToCartItemsController < ApplicationController
  before_action :initialize_session_cart
  before_action :load_cart

  def index
    # With CART SESSION information I will display added_to_cart_items on INDEX:
    @added_to_cart_products = AddedToCartItem.where(id: @cart_items)
  end

  def create
    # Before action I create a CURRENT_CART_SESSION_ARRAY
    # I will create a new added_to_cart_item which is a product with QUANTITY
    # Once I created it, I will add its ID to my CURRENT_CART_SESSION array
    # With this information I will display added_to_cart_items on INDEX
    @added_to_cart_item = AddedToCartItem.new(added_to_cart_item_params)

    if @added_to_cart_item.save
      add_item_id_to_cart
      redirect_to "/cart"
      flash[:notice] = "Item Added"
    else
      redirect_to root_path
      flash[:notice] = "Could not add item"
    end
  end

  def destroy
    @added_to_cart_item = AddedToCartItem.find(params[:id])
    if @added_to_cart_item.destroy
      redirect_to cart_path
      remove_item_id_from_cart(@added_to_cart_item.id)
    else
      flash[:notice] = "Could not remove"
    end
  end

  private

  def initialize_session_cart
    session[:cart] ||= []
  end

  def load_cart
    @cart_items = session[:cart]
  end

  def add_item_id_to_cart
    @cart_items  << @added_to_cart_item.id
  end
  
  def remove_item_id_from_cart(id)
    @cart_items.delete(id)
  end

  def added_to_cart_item_params
    params.permit(:quantity, :product_variation_id, :price)
  end
end
