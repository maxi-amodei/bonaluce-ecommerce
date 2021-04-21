class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]

  def index
  @products = Product.all
  end
  
  def show
    @product = Product.find(params[:id])
    @added_to_cart_item = AddedToCartItem.new
  end

  def new
    @product = Product.new
  end
end
