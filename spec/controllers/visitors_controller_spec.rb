RSpec.describe VisitorsController do
  describe "GET index" do
    it "assigns @products" do
      a = Product.create(name: "a")
      d = Product.create(name: "d")
      b = Product.create(name: "b")
      get :index, :sort => 'alphabetical'
      expect(assigns(:products)).to eq([a, b, d])
    end
  end
end
