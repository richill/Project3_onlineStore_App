class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :set_global_search_variable


  def set_global_search_variable
    @q = Product.search(params[:q])
  end

  protected
  def after_sign_in_path_for(resource)
    home_index_path
  end


  # private
  def current_cart 
    Cart.find(session[:cart_id])
    rescue ActiveRecord::RecordNotFound 
    cart = Cart.create 
    session[:cart_id] = cart.id
    cart
  end
end

  

