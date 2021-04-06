class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: :show
  def show
    @product = Product.find(params[:id])
    @product_variations = @product.product_variations
    @added_to_cart_item = AddedToCartItem.new
  end
end
