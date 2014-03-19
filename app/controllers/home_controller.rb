class HomeController < ApplicationController
  before_filter :authenticate_user!

  def index
    @products = Product.order(:name)
    @cart = current_cart
  end
end
