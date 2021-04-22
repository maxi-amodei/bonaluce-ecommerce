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
    @colors = colors
  end

  def create
    raise
  end
  private

  def product_params
    params.require(:product).permit(:name, :short_description, :supplier, :color, :price, :product_height, :product_length, :product_diameter, photos: [])
  end

  def colors
    ["Negro", "Cromo", "Blanco", "Gris", "Dorado"]
  end
end
