require 'rails_helper'

RSpec.describe Product, type: :model do
  it "alphabetical" do
    a = Product.create(name: "a")
    d = Product.create(name: "d")
    b = Product.create(name: "b")
    expect_products = [a, b, d]
    expect(Product.alphabetical()).to match_array(expect_products)
  end
end
