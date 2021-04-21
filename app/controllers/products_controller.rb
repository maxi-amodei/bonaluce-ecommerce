class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]

  def index
  @products = Product.all
  end
  
  def show
    @product = Product.find(params[:id])
    @product_variations = @product.product_variations
    @added_to_cart_item = AddedToCartItem.new
  end

  def new
  end
end
