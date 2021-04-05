class ProductsController < ApplicationController

  def show
    @product = Product.find(params[:id])
    @product_variations = @product.product_variations
    @added_to_cart_item = AddedToCartItem.new
  end
end
