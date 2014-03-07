class WelcomeController < ApplicationController
  before_action :set_product
  before_action :set_order

  def index
    if user_signed_in?
    else
      redirect_to new_user_session_path
    end
  end

  private

  def set_product
    @products = Product.all
  end

  def set_order
    @orders = Order.all
  end
end
