require 'rails_helper'

RSpec.describe AddedToCartItem, type: :model do

  it "checks that a visitor can create an AddedToCartItem" do
    product = ProductVariation.first
    price = product.price
    added_item = AddedToCartItem.create(product_variation: product, quantity: 2, price: product.price)
    expect(added_item).to be_valid
  end
end