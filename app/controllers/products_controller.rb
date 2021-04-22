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
    @categories = Category.all
    @colors = colors
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to product_path(@product)
    else
      render :new
    end
  end
  
  private

  def product_params
    params.require(:product).permit(:name, :short_description, :supplier_id, :color, :price, :product_height, :product_length,:product_width, :product_diameter,category_ids: [], photos: [])
  end

  def colors
    ["Negro", "Cromo", "Blanco", "Gris", "Dorado"]
  end
end
