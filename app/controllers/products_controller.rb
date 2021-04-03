class ProductsController < ApplicationController

  def show
    @product = Product.find(params[:id])
    @product_variations = @product.product_variations
  end
end
