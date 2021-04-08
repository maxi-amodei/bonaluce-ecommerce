require 'rails_helper'

RSpec.describe AddedToCartItem, type: :model do

  it "checks that a visitor can create an AddedToCartItem" do
    #RSpec expect fixtures to be set, DOESN'T FIND MY EXISSTING REOCORD ON DB
    supplier = Supplier.new(name: "Testing")
    product = Product.new(name: "Test", short_description: "Lorem ipsum blablas", supplier: supplier)
    product_var = ProductVariation.new(product: product, size: "test", color: "test", name: "testing1", price: 5000.0)
    added_item = AddedToCartItem.create(product_variation: product_var, quantity: 2, price: product_var.price)
    
    expect(added_item).to be_valid
  end

  it "checks that my added to cart item ID is included in my session cart" do
    supplier = Supplier.new(name: "Testing")
    product = Product.new(name: "Test", short_description: "Lorem ipsum blablas", supplier: supplier)
    product_var = ProductVariation.new(product: product, size: "test", color: "test", name: "testing1", price: 5000.0)
    added_item = AddedToCartItem.create(product_variation: product_var, quantity: 2, price: product_var.price)

    expect(session[:cart]).to include(added_item.id)
  end
end