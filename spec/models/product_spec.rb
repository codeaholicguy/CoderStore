require 'rails_helper'

RSpec.describe Product, type: :model do
  it "alphabetical" do
    Product.create(name: "a")
    Product.create(name: "d")
    Product.create(name: "b")
    expect_products = [Product.find_by(name: "a"), Product.find_by(name: "b"), Product.find_by(name: "d")]
    expect(Product.alphabetical()).to match_array(expect_products)
  end
end
